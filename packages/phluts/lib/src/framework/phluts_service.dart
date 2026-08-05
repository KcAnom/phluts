import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide ErrorWidgetBuilder;
import 'package:flutter/services.dart';
import 'package:phluts/src/framework/phluts.dart';
import 'package:phluts/src/framework/phluts_error.dart';
import 'package:phluts/src/framework/phluts_registry.dart';
import 'package:phluts/src/models/phluts_cache_config.dart';
import 'package:phluts/src/parsers/actions/phluts_form_validate/phluts_form_validate_parser.dart';
import 'package:phluts/src/parsers/actions/phluts_get_form_value/phluts_get_form_value_parser.dart';
import 'package:phluts/src/parsers/actions/phluts_network_request/phluts_network_request_parser.dart';
import 'package:phluts/src/parsers/parsers.dart';
import 'package:phluts/src/parsers/widgets/phluts_app_bar/phluts_app_bar_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_inkwell/phluts_inkwell_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_row/phluts_row_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_text/phluts_text_parser.dart';
import 'package:phluts/src/parsers/widgets/phluts_tool_tip/phluts_tool_tip_parser.dart';
import 'package:phluts/src/services/phluts_network_service.dart';
import 'package:phluts/src/utils/variable_resolver.dart';
import 'package:phluts_core/phluts_core.dart';
import 'package:phluts_framework/phluts_framework.dart';
import 'package:phluts_logger/phluts_logger.dart';

/// Internal service that manages Phluts parsers, actions, and rendering.
///
/// This service is the core of the Phluts framework, responsible for:
/// - Registering and managing widget and action parsers
/// - Converting JSON to Flutter widgets
/// - Handling errors with proper error widgets
/// - Loading widgets from network and assets
///
/// Initialize with [initialize] before using any Phluts widgets:
/// ```dart
/// await PhlutsService.initialize(
///   parsers: [...],
///   actionParsers: [...],
///   showErrorWidgets: true,
/// );
/// ```
class PhlutsService {
  // Error message constants
  static const String _errorWidgetTypeNotSupported =
      'Widget type not found or not supported';
  static const String _errorActionTypeNotSupported =
      'Action type not found or not supported';

  static final _parsers = <PhlutsParser>[
    const PhlutsContainerParser(),
    const PhlutsTextParser(),
    const PhlutsTextFieldParser(),
    const PhlutsElevatedButtonParser(),
    const PhlutsImageParser(),
    const PhlutsIconParser(),
    const PhlutsCenterParser(),
    const PhlutsRowParser(),
    const PhlutsColumnParser(),
    const PhlutsCustomScrollViewParser(),
    const PhlutsStackParser(),
    const PhlutsPositionedParser(),
    const PhlutsIconButtonParser(),
    const PhlutsFloatingActionButtonParser(),
    const PhlutsOutlinedButtonParser(),
    const PhlutsPaddingParser(),
    const PhlutsAppBarParser(),
    const PhlutsTextButtonParser(),
    const PhlutsScaffoldParser(),
    const PhlutsSizedBoxParser(),
    const PhlutsFractionallySizedBoxParser(),
    const PhlutsTextFormFieldParser(),
    const PhlutsTabBarViewParser(),
    const PhlutsTabBarParser(),
    const PhlutsListTileParser(),
    const PhlutsCardParser(),
    const PhlutsBottomNavigationBarParser(),
    const PhlutsNavigationBarParser(),
    const PhlutsListViewParser(),
    const PhlutsDefaultTabControllerParser(),
    const PhlutsSingleChildScrollViewParser(),
    const PhlutsAlertDialogParser(),
    const PhlutsTabParser(),
    const PhlutsFormParser(),
    const PhlutsCheckBoxParser(),
    const PhlutsExpandedParser(),
    const PhlutsFlexibleParser(),
    const PhlutsSpacerParser(),
    const PhlutsSafeAreaParser(),
    const PhlutsSwitchParser(),
    const PhlutsAlignParser(),
    const PhlutsPageViewParser(),
    const PhlutsRefreshIndicatorParser(),
    const PhlutsNetworkWidgetParser(),
    const PhlutsCircleAvatarParser(),
    const PhlutsChipParser(),
    const PhlutsGridViewParser(),
    const PhlutsFilledButtonParser(),
    const PhlutsBottomNavigationViewParser(),
    const PhlutsNavigationViewParser(),
    const PhlutsDefaultBottomNavigationControllerParser(),
    const PhlutsDefaultNavigationControllerParser(),
    const PhlutsWrapParser(),
    const PhlutsAutoCompleteParser(),
    const PhlutsBadgeParser(),
    const PhlutsToolTipParser(),
    const PhlutsTableParser(),
    const PhlutsTableCellParser(),
    const PhlutsCarouselViewParser(),
    const PhlutsColoredBoxParser(),
    const PhlutsDividerParser(),
    const PhlutsDrawerParser(),
    const PhlutsCircularProgressIndicatorParser(),
    const PhlutsLinearProgressIndicatorParser(),
    const PhlutsHeroParser(),
    const PhlutsRadioParser(),
    const PhlutsRadioGroupParser(),
    const PhlutsSliderParser(),
    const PhlutsSliverAppBarParser(),
    const PhlutsSliverGridParser(),
    const PhlutsSliverFillRemainingParser(),
    const PhlutsSliverListParser(),
    const PhlutsSliverVisibilityParser(),
    const PhlutsSliverOpacityParser(),
    const PhlutsSliverSafeAreaParser(),
    const PhlutsSliverPaddingParser(),
    const PhlutsSliverToBoxAdapterParser(),
    const PhlutsOpacityParser(),
    const PhlutsPlaceholderParser(),
    const PhlutsAspectRatioParser(),
    const PhlutsFittedBoxParser(),
    const PhlutsLimitedBoxParser(),
    const PhlutsDynamicViewParser(),
    const PhlutsDropdownMenuParser(),
    const PhlutsClipRRectParser(),
    const PhlutsClipOvalParser(),
    const PhlutsGestureDetectorParser(),
    const PhlutsSetValueParser(),
    const PhlutsInkwellParser(),
    const PhlutsConditionalParser(),
    const PhlutsVisibilityParser(),
    const PhlutsBackdropFilterParser(),
    const PhlutsVerticalDividerParser(),
    const PhlutsSelectableTextParser(),
  ];

  static final _actionParsers = <PhlutsActionParser>[
    const PhlutsNoneActionParser(),
    const PhlutsNavigateActionParser(),
    const PhlutsNetworkRequestParser(),
    const PhlutsModalBottomSheetActionParser(),
    const PhlutsDialogActionParser(),
    const PhlutsGetFormValueParser(),
    const PhlutsFormValidateParser(),
    const PhlutsSnackBarParser(),
    const PhlutsSetValueActionParser(),
    const PhlutsMultiActionParser(),
    const PhlutsDelayActionParser(),
  ];

  static PhlutsOptions? _options;
  static PhlutsOptions? get options => _options;

  static bool _showErrorWidgets = true;
  static bool _logStackTraces = true;

  // Optional global parse-error widget builder supplied by the app.
  static PhlutsErrorWidgetBuilder? _errorWidgetBuilder;

  // Default cache configuration for all Phluts widgets and PhlutsCloud calls.
  static PhlutsCacheConfig _defaultCacheConfig = const PhlutsCacheConfig(
    strategy: PhlutsCacheStrategy.networkFirst,
  );
  static PhlutsCacheConfig get defaultCacheConfig => _defaultCacheConfig;

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
    _options = options;
    if (cacheConfig != null) {
      _defaultCacheConfig = cacheConfig;
    }
    _parsers.addAll(parsers);
    _actionParsers.addAll(actionParsers);
    PhlutsRegistry.instance.registerAll(_parsers, override);
    PhlutsRegistry.instance.registerAllActions(_actionParsers, override);
    PhlutsNetworkService.initialize(dio ?? Dio());
    _showErrorWidgets = showErrorWidgets;
    _logStackTraces = logStackTraces;
    _errorWidgetBuilder = errorWidgetBuilder;
  }

  static Widget? fromJson(Map<String, dynamic>? json, BuildContext context) {
    try {
      if (json == null) {
        return null;
      }

      // Safely extract widget type with validation
      final widgetType = json['type'];
      if (widgetType == null) {
        throw FormatException('Missing required "type" field in JSON');
      }

      if (widgetType is! String) {
        throw TypeError();
      }

      final phlutsParser = PhlutsRegistry.instance.getParser(widgetType);

      if (phlutsParser == null) {
        Log.w('Widget type [$widgetType] not supported');

        // Return error widget if enabled (debug-only)
        if (_showErrorWidgets && kDebugMode) {
          return _buildErrorWidget(
            context: context,
            error: PhlutsError(
              type: widgetType,
              error: Exception(_errorWidgetTypeNotSupported),
              json: json,
            ),
          );
        }
        return null;
      }

      // Resolve variables in JSON (skip for setValue to avoid recursion)
      final resolvedJson = widgetType == WidgetType.setValue.name
          ? json
          : resolveVariablesInJson(json, PhlutsRegistry.instance);

      final model = phlutsParser.getModel(resolvedJson);
      return phlutsParser.parse(context, model);
    } catch (e, stackTrace) {
      // Log error with full context
      _logError(
        category: 'Widget Parse Error',
        type: json?['type']?.toString(),
        error: e,
        stackTrace: stackTrace,
      );

      // Return error widget if enabled (debug-only)
      if (_showErrorWidgets && kDebugMode) {
        return _buildErrorWidget(
          context: context,
          error: PhlutsError(
            type: json?['type']?.toString(),
            error: e,
            json: json,
            stackTrace: stackTrace,
          ),
        );
      }
    }
    return null;
  }

  static Widget? fromPhlutsWidget({
    required PhlutsWidget widget,
    required BuildContext context,
  }) {
    try {
      final widgetType = widget.type;
      final phlutsParser = PhlutsRegistry.instance.getParser(widgetType);

      if (phlutsParser == null) {
        Log.w('Widget type [$widgetType] not supported');

        // Return error widget if enabled (debug-only)
        if (_showErrorWidgets && kDebugMode) {
          return _buildErrorWidget(
            context: context,
            error: PhlutsError(
              type: widgetType,
              error: Exception(_errorWidgetTypeNotSupported),
              json: widget.toJson(),
            ),
          );
        }
        return null;
      }

      // Resolve variables in JSON (skip for setValue to avoid recursion)
      final resolvedJson = widgetType == WidgetType.setValue.name
          ? widget.toJson()
          : resolveVariablesInJson(widget.toJson(), PhlutsRegistry.instance);

      final model = phlutsParser.getModel(resolvedJson);
      return phlutsParser.parse(context, model);
    } catch (e, stackTrace) {
      _logError(
        category: 'Widget Parse Error',
        type: widget.type,
        error: e,
        stackTrace: stackTrace,
      );

      // Return error widget if enabled (debug-only)
      if (_showErrorWidgets && kDebugMode) {
        return _buildErrorWidget(
          context: context,
          error: PhlutsError(
            type: widget.type,
            error: e,
            json: widget.toJson(),
            stackTrace: stackTrace,
          ),
        );
      }
    }
    return null;
  }

  /// Async on purpose: an action parser's `onCall` is itself async, so
  /// returning its future unawaited let anything it threw land *after* this
  /// try/catch had already returned — reaching the zone handler as an
  /// unhandled error, past every bit of framework error handling. Awaiting is
  /// what puts async action failures inside the catch below.
  static Future<dynamic> onCallFromJson(
    Map<String, dynamic>? json,
    BuildContext context,
  ) async {
    try {
      if (json == null) {
        return null;
      }

      // Safely extract action type with validation
      final actionType = json['actionType'];
      if (actionType == null) {
        throw FormatException('Missing required "actionType" field in JSON');
      }

      if (actionType is! String) {
        throw TypeError();
      }

      final phlutsActionParser = PhlutsRegistry.instance.getActionParser(
        actionType,
      );

      if (phlutsActionParser == null) {
        Log.w('Action type [$actionType] not supported');

        // Optionally show error widget for actions too (consistency)
        if (_showErrorWidgets && kDebugMode) {
          // Actions don't return widgets, so just log the error
          _logError(
            category: 'Action Parse Error',
            type: actionType,
            error: Exception(_errorActionTypeNotSupported),
          );
        }
        return null;
      }

      final model = phlutsActionParser.getModel(json);
      return await phlutsActionParser.onCall(context, model);
    } catch (e, stackTrace) {
      _logError(
        category: 'Action Parse Error',
        type: json?['actionType']?.toString(),
        error: e,
        stackTrace: stackTrace,
      );
    }
    return null;
  }

  static Widget fromNetwork({
    required PhlutsNetworkRequest request,
    required BuildContext context,
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return FutureBuilder<Response?>(
      future: PhlutsNetworkService.request(context, request),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            Widget? widget;
            if (loadingWidget != null) {
              widget = loadingWidget(context);
              return widget;
            }
            break;
          case ConnectionState.done:
            if (snapshot.hasData) {
              final json = jsonDecode(snapshot.data.toString());
              return PhlutsService.fromJson(json, context) ?? const SizedBox();
            } else if (snapshot.hasError) {
              _logError(
                category: 'Network Request Error',
                type: 'network',
                error: snapshot.error ?? 'Unknown network error',
                stackTrace: snapshot.stackTrace,
              );

              if (errorWidget != null) {
                return errorWidget(context, snapshot.error);
              } else if (_showErrorWidgets && kDebugMode) {
                return _buildErrorWidget(
                  context: context,
                  error: PhlutsError(
                    type: 'network',
                    error: snapshot.error ?? 'Unknown network error',
                    stackTrace: snapshot.stackTrace,
                  ),
                );
              }
            }
            break;
          default:
            break;
        }
        return const SizedBox();
      },
    );
  }

  static Widget fromAssets(
    String assetPath, {
    LoadingWidgetBuilder? loadingWidget,
    ErrorWidgetBuilder? errorWidget,
  }) {
    return FutureBuilder<String>(
      future: rootBundle.loadString(assetPath),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            Widget? widget;
            if (loadingWidget != null) {
              widget = loadingWidget(context);
              return widget;
            }
            break;
          case ConnectionState.done:
            if (snapshot.hasData) {
              final json = jsonDecode(snapshot.data.toString());
              return PhlutsService.fromJson(json, context) ?? const SizedBox();
            } else if (snapshot.hasError) {
              _logError(
                category: 'Asset Load Error',
                type: 'asset',
                error: snapshot.error ?? 'Unknown asset load error',
                stackTrace: snapshot.stackTrace,
              );

              if (errorWidget != null) {
                return errorWidget(context, snapshot.error);
              } else if (_showErrorWidgets && kDebugMode) {
                return _buildErrorWidget(
                  context: context,
                  error: PhlutsError(
                    type: 'asset',
                    error: snapshot.error ?? 'Unknown asset load error',
                    stackTrace: snapshot.stackTrace,
                  ),
                );
              }
            }
            break;
          default:
            break;
        }
        return const SizedBox();
      },
    );
  }

  /// Centralized error logging with consistent formatting.
  static void _logError({
    required String category,
    String? type,
    required Object error,
    StackTrace? stackTrace,
  }) {
    // Build compact error message
    final buffer = StringBuffer('[Phluts $category]');

    if (type != null) {
      buffer.write(' Type: "$type"');
    }

    buffer.write(' - $error');

    Log.e(buffer.toString());

    // Log stack trace separately if available and enabled
    if (_logStackTraces && stackTrace != null) {
      Log.e('Stack trace:\n$stackTrace');
    }
  }

  /// Builds an error widget with contextual information.
  ///
  /// Uses the custom [PhlutsErrorWidgetBuilder] if provided during initialization,
  /// otherwise falls back to the default [PhlutsErrorWidget].
  ///
  /// Only shown in debug mode when [_showErrorWidgets] is true.
  static Widget _buildErrorWidget({
    required BuildContext context,
    required PhlutsError error,
  }) {
    // Prefer custom builder if provided
    if (_errorWidgetBuilder != null) {
      return _errorWidgetBuilder!(context, error);
    }

    return PhlutsErrorWidget(errorDetails: error);
  }
}
