import 'package:flutter/material.dart';
import 'package:phluts/src/framework/phluts_app_theme.dart';
import 'package:phluts/src/parsers/theme/themes.dart';
import 'package:phluts_logger/phluts_logger.dart';

class PhlutsApp extends StatefulWidget {
  const PhlutsApp({
    super.key,
    this.navigatorKey,
    this.scaffoldMessengerKey,
    this.homeBuilder,
    Map<String, WidgetBuilder> this.routes = const <String, WidgetBuilder>{},
    this.initialRoute,
    this.onGenerateRoute,
    this.onGenerateInitialRoutes,
    this.onUnknownRoute,
    List<NavigatorObserver> this.navigatorObservers =
        const <NavigatorObserver>[],
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.themeMode = ThemeMode.system,
    this.themeAnimationDuration = kThemeAnimationDuration,
    this.themeAnimationCurve = Curves.linear,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
    this.useInheritedMediaQuery = false,
  }) : routeInformationProvider = null,
       routeInformationParser = null,
       routerDelegate = null,
       backButtonDispatcher = null,
       routerConfig = null;

  const PhlutsApp.router({
    super.key,
    this.scaffoldMessengerKey,
    this.routeInformationProvider,
    this.routeInformationParser,
    this.routerDelegate,
    this.routerConfig,
    this.backButtonDispatcher,
    this.builder,
    this.title = '',
    this.onGenerateTitle,
    this.color,
    this.theme,
    this.darkTheme,
    this.highContrastTheme,
    this.highContrastDarkTheme,
    this.themeMode = ThemeMode.system,
    this.themeAnimationDuration = kThemeAnimationDuration,
    this.themeAnimationCurve = Curves.linear,
    this.locale,
    this.localizationsDelegates,
    this.localeListResolutionCallback,
    this.localeResolutionCallback,
    this.supportedLocales = const <Locale>[Locale('en', 'US')],
    this.debugShowMaterialGrid = false,
    this.showPerformanceOverlay = false,
    this.checkerboardRasterCacheImages = false,
    this.checkerboardOffscreenLayers = false,
    this.showSemanticsDebugger = false,
    this.debugShowCheckedModeBanner = true,
    this.shortcuts,
    this.actions,
    this.restorationScopeId,
    this.scrollBehavior,
    this.useInheritedMediaQuery = false,
  }) : navigatorObservers = null,
       navigatorKey = null,
       onGenerateRoute = null,
       homeBuilder = null,
       onGenerateInitialRoutes = null,
       onUnknownRoute = null,
       routes = null,
       initialRoute = null;

  @override
  State<PhlutsApp> createState() => _PhlutsAppState();

  final GlobalKey<NavigatorState>? navigatorKey;
  final GlobalKey<ScaffoldMessengerState>? scaffoldMessengerKey;
  final Widget? Function(BuildContext)? homeBuilder;
  final Map<String, WidgetBuilder>? routes;
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final InitialRouteListFactory? onGenerateInitialRoutes;
  final RouteFactory? onUnknownRoute;
  final List<NavigatorObserver>? navigatorObservers;
  final RouteInformationProvider? routeInformationProvider;
  final RouteInformationParser<Object>? routeInformationParser;
  final RouterDelegate<Object>? routerDelegate;
  final BackButtonDispatcher? backButtonDispatcher;
  final RouterConfig<Object>? routerConfig;
  final TransitionBuilder? builder;
  final String title;
  final GenerateAppTitle? onGenerateTitle;
  final PhlutsAppTheme? theme;
  final PhlutsAppTheme? darkTheme;
  final ThemeData? highContrastTheme;
  final ThemeData? highContrastDarkTheme;
  final ThemeMode? themeMode;
  final Duration themeAnimationDuration;
  final Curve themeAnimationCurve;
  final Color? color;
  final Locale? locale;
  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final LocaleListResolutionCallback? localeListResolutionCallback;
  final LocaleResolutionCallback? localeResolutionCallback;
  final Iterable<Locale> supportedLocales;
  final bool showPerformanceOverlay;
  final bool checkerboardRasterCacheImages;
  final bool checkerboardOffscreenLayers;
  final bool showSemanticsDebugger;
  final bool debugShowCheckedModeBanner;
  final Map<ShortcutActivator, Intent>? shortcuts;
  final Map<Type, Action<Intent>>? actions;
  final String? restorationScopeId;
  final ScrollBehavior? scrollBehavior;
  final bool debugShowMaterialGrid;
  final bool useInheritedMediaQuery;
}

class _PhlutsAppState extends State<PhlutsApp> {
  Future<_ResolvedPhlutsThemes>? _themesFuture;
  _ResolvedPhlutsThemes? _resolvedThemes;

  @override
  void initState() {
    super.initState();
    _themesFuture = _resolveThemes();
    _themesFuture!
        .then((themes) {
          if (mounted) {
            setState(() {
              _resolvedThemes = themes;
            });
          }
        })
        .catchError((error) {
          if (mounted) {
            Log.w('Failed to resolve theme: $error');
            setState(() {
              _resolvedThemes = (theme: null, darkTheme: null);
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    if (_resolvedThemes == null) {
      return const _LoadingWidget();
    }

    if (widget.routerDelegate != null || widget.routerConfig != null) {
      return _buildMaterialAppRouter(context, _resolvedThemes!);
    }
    return _buildMaterialApp(context, _resolvedThemes!);
  }

  Widget _buildMaterialApp(BuildContext context, _ResolvedPhlutsThemes themes) {
    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      home: Builder(
        builder: (context) {
          if (widget.homeBuilder != null) {
            return widget.homeBuilder!(context) ?? const SizedBox();
          }
          return const SizedBox();
        },
      ),
      routes: widget.routes ?? {},
      initialRoute: widget.initialRoute,
      onGenerateRoute: widget.onGenerateRoute,
      onGenerateInitialRoutes: widget.onGenerateInitialRoutes,
      onUnknownRoute: widget.onUnknownRoute,
      navigatorObservers: widget.navigatorObservers ?? [],
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      theme: themes.theme?.parse(context),
      darkTheme: themes.darkTheme?.parse(context),
      highContrastTheme: widget.highContrastTheme,
      highContrastDarkTheme: widget.highContrastDarkTheme,
      themeMode: widget.themeMode,
      themeAnimationDuration: widget.themeAnimationDuration,
      themeAnimationCurve: widget.themeAnimationCurve,
      color: widget.color,
      locale: widget.locale,
      localizationsDelegates: widget.localizationsDelegates,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      localeResolutionCallback: widget.localeResolutionCallback,
      supportedLocales: widget.supportedLocales,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      shortcuts: widget.shortcuts,
      actions: widget.actions,
      restorationScopeId: widget.restorationScopeId,
      scrollBehavior: widget.scrollBehavior,
      debugShowMaterialGrid: widget.debugShowMaterialGrid,
    );
  }

  Widget _buildMaterialAppRouter(
    BuildContext context,
    _ResolvedPhlutsThemes themes,
  ) {
    return MaterialApp.router(
      scaffoldMessengerKey: widget.scaffoldMessengerKey,
      routeInformationProvider: widget.routeInformationProvider,
      routeInformationParser: widget.routeInformationParser,
      routerDelegate: widget.routerDelegate,
      routerConfig: widget.routerConfig,
      backButtonDispatcher: widget.backButtonDispatcher,
      builder: widget.builder,
      title: widget.title,
      onGenerateTitle: widget.onGenerateTitle,
      color: widget.color,
      theme: themes.theme?.parse(context),
      darkTheme: themes.darkTheme?.parse(context),
      highContrastTheme: widget.highContrastTheme,
      highContrastDarkTheme: widget.highContrastDarkTheme,
      themeMode: widget.themeMode,
      themeAnimationDuration: widget.themeAnimationDuration,
      themeAnimationCurve: widget.themeAnimationCurve,
      locale: widget.locale,
      localizationsDelegates: widget.localizationsDelegates,
      localeListResolutionCallback: widget.localeListResolutionCallback,
      localeResolutionCallback: widget.localeResolutionCallback,
      supportedLocales: widget.supportedLocales,
      debugShowMaterialGrid: widget.debugShowMaterialGrid,
      showPerformanceOverlay: widget.showPerformanceOverlay,
      checkerboardRasterCacheImages: widget.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: widget.checkerboardOffscreenLayers,
      showSemanticsDebugger: widget.showSemanticsDebugger,
      debugShowCheckedModeBanner: widget.debugShowCheckedModeBanner,
      shortcuts: widget.shortcuts,
      actions: widget.actions,
      restorationScopeId: widget.restorationScopeId,
      scrollBehavior: widget.scrollBehavior,
    );
  }

  Future<_ResolvedPhlutsThemes> _resolveThemes() {
    final themeInput = widget.theme;
    final darkThemeInput = widget.darkTheme;

    // Both themes are optional, so we need to handle null cases
    final Future<PhlutsTheme?>? themeFuture = themeInput?.resolve();
    final Future<PhlutsTheme?>? darkThemeFuture = darkThemeInput?.resolve();

    // If both are null, return immediately with null themes
    if (themeFuture == null && darkThemeFuture == null) {
      return Future.value((theme: null, darkTheme: null));
    }

    return Future<_ResolvedPhlutsThemes>(() async {
      final resolvedTheme =
          await (themeFuture ?? Future<PhlutsTheme?>.value(null));
      final resolvedDarkTheme =
          await (darkThemeFuture ?? Future<PhlutsTheme?>.value(null));

      return (theme: resolvedTheme, darkTheme: resolvedDarkTheme);
    });
  }
}

typedef _ResolvedPhlutsThemes = ({PhlutsTheme? theme, PhlutsTheme? darkTheme});

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Material(child: Center(child: CircularProgressIndicator()));
  }
}
