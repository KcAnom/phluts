import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:phluts/src/framework/phluts_error.dart';
import 'package:phluts/src/framework/phluts_service.dart';
import 'package:phluts/src/models/phluts_cache_config.dart';
import 'package:phluts/src/services/phluts_cloud.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_options.dart';
import 'package:phluts_framework/phluts_framework.dart';

/// Builder function for displaying errors in Phluts widgets.
///
/// Called when a Phluts widget encounters an error during loading or parsing.
typedef ErrorWidgetBuilder =
    Widget Function(BuildContext context, dynamic error);

/// Builder function for displaying loading states in Phluts widgets.
///
/// Called while a Phluts widget is fetching data from the network or cache.
typedef LoadingWidgetBuilder = Widget Function(BuildContext context);

/// Global parse-error widget builder for Phluts.
///
/// Allows apps to provide a custom widget when parsing a Phluts widget/action
/// fails. The builder receives useful context like the widget/action type,
/// original JSON and stack trace (when available).
///
/// Example:
/// ```dart
/// Phluts.initialize(
///   errorWidgetBuilder: (context, errorDetails) {
///     return Text('Error in ${errorDetails.type}: ${errorDetails.error}');
///   },
/// );
/// ```
typedef PhlutsErrorWidgetBuilder =
    Widget Function(BuildContext context, PhlutsError errorDetails);

/// The main entry point for rendering Server-Driven UI from Phluts Cloud.
///
/// [Phluts] is a widget that fetches screen definitions from Phluts Cloud
/// and renders them as Flutter widgets. It supports intelligent caching,
/// offline access, and background updates.
///
/// ## Basic Usage
///
/// ```dart
/// // First, initialize Phluts in your app's main function
/// void main() async {
///   WidgetsFlutterBinding.ensureInitialized();
///   await Phluts.initialize(
///     options: PhlutsOptions(projectId: 'your-project-id'),
///   );
///   runApp(MyApp());
/// }
///
/// // Then use Phluts widget to render server-driven screens
/// Phluts(routeName: '/home')
/// ```
///
/// ## Caching
///
/// By default, Phluts uses a network-first caching strategy that always
/// fetches the latest content, falling back to cache when offline.
/// Configure caching globally during initialization:
///
/// ```dart
/// await Phluts.initialize(
///   options: PhlutsOptions(projectId: 'your-project-id'),
///   cacheConfig: PhlutsCacheConfig(
///     strategy: PhlutsCacheStrategy.cacheFirst,
///     maxAge: Duration(hours: 24),
///   ),
/// );
/// ```
///
/// ## Custom Loading and Error States
///
/// ```dart
/// Phluts(
///   routeName: '/home',
///   loadingWidget: Center(child: CircularProgressIndicator()),
///   errorWidget: Center(child: Text('Failed to load')),
/// )
/// ```
///
/// ## Static Methods
///
/// Phluts also provides static methods for rendering widgets from various sources:
/// - [fromJson] - Render from a JSON map
/// - [fromAssets] - Render from a local asset file
/// - [fromNetwork] - Render from a custom network request
///
/// See also:
/// - [PhlutsCacheConfig] for cache configuration options
/// - [PhlutsOptions] for initialization options
class Phluts extends StatelessWidget {
  /// Creates a Phluts widget that renders a screen from Phluts Cloud.
  ///
  /// The [routeName] identifies which screen to fetch from the cloud.
  /// This should match the screen name configured in your Phluts Cloud project.
  ///
  /// Optionally provide [loadingWidget] and [errorWidget] to customize
  /// the loading and error states. If not provided, defaults are used.
  ///
  /// Cache behavior is configured globally via [Phluts.initialize].
  const Phluts({
    super.key,
    required this.routeName,
    this.loadingWidget,
    this.errorWidget,
  });

  /// The route name identifying the screen to fetch from Phluts Cloud.
  ///
  /// This should match the screen name configured in your Phluts Cloud project.
  /// For example: `/home`, `/profile`, `/settings`.
  final String routeName;

  /// Widget to display while the screen is loading.
  ///
  /// If `null`, a default loading indicator is shown (centered
  /// [CircularProgressIndicator] in a [Scaffold]).
  final Widget? loadingWidget;

  /// Widget to display when an error occurs.
  ///
  /// If `null`, an empty [SizedBox] is shown on error.
  final Widget? errorWidget;

  /// Initializes Phluts with the provided configuration.
  ///
  /// This must be called before using any Phluts widgets, typically in
  /// your app's `main` function after `WidgetsFlutterBinding.ensureInitialized()`.
  ///
  /// ## Parameters
  ///
  /// - [options]: Configuration containing your Phluts Cloud project ID.
  ///   Required for fetching screens from Phluts Cloud.
  ///
  /// - [parsers]: Custom widget parsers for extending Phluts with custom widgets.
  ///   These are merged with the built-in parsers.
  ///
  /// - [actionParsers]: Custom action parsers for extending Phluts with custom actions.
  ///   These are merged with the built-in action parsers.
  ///
  /// - [dio]: Custom Dio instance for network requests. If not provided,
  ///   a default instance is used.
  ///
  /// - [override]: If `true`, allows re-initialization. Useful for testing.
  ///   Defaults to `false`.
  ///
  /// - [showErrorWidgets]: If `true`, shows error widgets when parsing fails.
  ///   If `false`, errors are silent. Defaults to `true`.
  ///
  /// - [logStackTraces]: If `true`, logs stack traces for debugging.
  ///   Defaults to `true`.
  ///
  /// - [errorWidgetBuilder]: Custom builder for error widgets shown when
  ///   parsing fails.
  ///
  /// - [cacheConfig]: Global cache configuration for all Phluts widgets and
  ///   PhlutsCloud calls. Defaults to networkFirst strategy if not provided.
  ///
  /// ## Example
  ///
  /// ```dart
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   await Phluts.initialize(
  ///     options: PhlutsOptions(projectId: 'your-project-id'),
  ///     parsers: [MyCustomWidgetParser()],
  ///     actionParsers: [MyCustomActionParser()],
  ///   );
  ///   runApp(MyApp());
  /// }
  /// ```
  static Future<void> initialize({
    PhlutsOptions? options,
    List<PhlutsParser> parsers = const [],
    List<PhlutsActionParser> actionParsers = const [],
    Dio? dio,
    bool override = false,
    bool showErrorWidgets = true,
    bool logStackTraces = true,
    PhlutsErrorWidgetBuilder? errorWidgetBuilder,
    PhlutsCacheConfig? cacheConfig,
  }) async {
    return PhlutsService.initialize(
      options: options,
      parsers: parsers,
      actionParsers: actionParsers,
      dio: dio,
      override: override,
      showErrorWidgets: showErrorWidgets,
      logStackTraces: logStackTraces,
      errorWidgetBuilder: errorWidgetBuilder,
      cacheConfig: cacheConfig,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _PhlutsView(
      routeName: routeName,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  /// Converts a JSON map to a Flutter widget.
  ///
  /// Use this method to render a Phluts widget definition that you already
  /// have as a JSON map (e.g., from a local file or custom API).
  ///
  /// Returns `null` if the JSON is `null` or cannot be parsed.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final json = {
  ///   'type': 'text',
  ///   'data': 'Hello, World!',
  /// };
  /// final widget = Phluts.fromJson(json, context);
  /// ```
  static Widget? fromJson(Map<String, dynamic>? json, BuildContext context) {
    return PhlutsService.fromJson(json, context);
  }

  /// Loads and renders a Phluts widget from a local asset file.
  ///
  /// The [assetPath] should point to a JSON file in your assets folder
  /// containing a valid Phluts widget definition.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Phluts.fromAssets(
  ///   'assets/screens/home.json',
  ///   loadingWidget: (context) => CircularProgressIndicator(),
  ///   errorWidget: (context, error) => Text('Error: $error'),
  /// )
  /// ```
  static Widget fromAssets(
    String assetPath, {
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return PhlutsService.fromAssets(
      assetPath,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  /// Loads and renders a Phluts widget from a custom network request.
  ///
  /// Use this when you need to fetch Phluts widget definitions from your
  /// own API instead of Phluts Cloud.
  ///
  /// The [request] defines the network request configuration including
  /// URL, method, headers, and body.
  ///
  /// ## Example
  ///
  /// ```dart
  /// Phluts.fromNetwork(
  ///   context: context,
  ///   request: PhlutsNetworkRequest(
  ///     url: 'https://api.example.com/screens/home',
  ///     method: 'GET',
  ///   ),
  ///   loadingWidget: (context) => CircularProgressIndicator(),
  /// )
  /// ```
  static Widget fromNetwork({
    required BuildContext context,
    required PhlutsNetworkRequest request,
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return PhlutsService.fromNetwork(
      context: context,
      request: request,
      loadingWidget: loadingWidget,
      errorWidget: errorWidget,
    );
  }

  /// Executes a Phluts action from a JSON definition.
  ///
  /// Use this to programmatically trigger Phluts actions (like navigation,
  /// network requests, or custom actions) from JSON definitions.
  ///
  /// Returns the result of the action, which varies by action type.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final actionJson = {
  ///   'actionType': 'navigate',
  ///   'routeName': '/details',
  /// };
  /// await Phluts.onCallFromJson(actionJson, context);
  /// ```
  static FutureOr<dynamic> onCallFromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) {
    return PhlutsService.onCallFromJson(json, context);
  }
}

/// Internal stateless widget that handles fetching and rendering Phluts screens.
class _PhlutsView extends StatelessWidget {
  const _PhlutsView({
    required this.routeName,
    this.loadingWidget,
    this.errorWidget,
  });

  final String routeName;
  final Widget? loadingWidget;
  final Widget? errorWidget;

  @override
  Widget build(BuildContext context) {
    final options = PhlutsService.options;
    if (options == null) {
      throw Exception('PhlutsOptions is not set');
    }

    return FutureBuilder<Response?>(
      future: PhlutsCloud.fetchScreen(routeName: routeName),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return loadingWidget ?? const _LoadingWidget();
        }
        if (snapshot.hasError) {
          return errorWidget ?? const SizedBox();
        }
        if (snapshot.hasData) {
          final jsonString = snapshot.data!.data['phlutsJson'];
          return PhlutsService.fromJson(jsonDecode(jsonString), context) ??
              const SizedBox();
        }
        return const SizedBox();
      },
    );
  }
}

/// Default loading widget shown when no custom loading widget is provided.
class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
