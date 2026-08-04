// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phluts_webview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhlutsWebView {
  /// The URL to load in the `WebView`.
  String get url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  JavaScriptMode get javaScriptMode;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  String get backgroundColor;

  /// The user agent for the `WebView`.
  String? get userAgent;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  bool get enableZoom;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  TextDirection get layoutDirection;

  /// Create a copy of PhlutsWebView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PhlutsWebViewCopyWith<PhlutsWebView> get copyWith =>
      _$PhlutsWebViewCopyWithImpl<PhlutsWebView>(this as PhlutsWebView, _$identity);

  /// Serializes this PhlutsWebView to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhlutsWebView &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.javaScriptMode, javaScriptMode) ||
                other.javaScriptMode == javaScriptMode) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.enableZoom, enableZoom) ||
                other.enableZoom == enableZoom) &&
            (identical(other.layoutDirection, layoutDirection) ||
                other.layoutDirection == layoutDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, javaScriptMode,
      backgroundColor, userAgent, enableZoom, layoutDirection);

  @override
  String toString() {
    return 'PhlutsWebView(url: $url, javaScriptMode: $javaScriptMode, backgroundColor: $backgroundColor, userAgent: $userAgent, enableZoom: $enableZoom, layoutDirection: $layoutDirection)';
  }
}

/// @nodoc
abstract mixin class $PhlutsWebViewCopyWith<$Res> {
  factory $PhlutsWebViewCopyWith(
          PhlutsWebView value, $Res Function(PhlutsWebView) _then) =
      _$PhlutsWebViewCopyWithImpl;
  @useResult
  $Res call(
      {String url,
      JavaScriptMode javaScriptMode,
      String backgroundColor,
      String? userAgent,
      bool enableZoom,
      TextDirection layoutDirection});
}

/// @nodoc
class _$PhlutsWebViewCopyWithImpl<$Res> implements $PhlutsWebViewCopyWith<$Res> {
  _$PhlutsWebViewCopyWithImpl(this._self, this._then);

  final PhlutsWebView _self;
  final $Res Function(PhlutsWebView) _then;

  /// Create a copy of PhlutsWebView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? javaScriptMode = null,
    Object? backgroundColor = null,
    Object? userAgent = freezed,
    Object? enableZoom = null,
    Object? layoutDirection = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _self.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _self.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _self.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PhlutsWebView implements PhlutsWebView {
  const _PhlutsWebView(
      {required this.url,
      this.javaScriptMode = JavaScriptMode.unrestricted,
      this.backgroundColor = "#FFFFFF",
      this.userAgent,
      this.enableZoom = false,
      this.layoutDirection = TextDirection.ltr});
  factory _PhlutsWebView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsWebViewFromJson(json);

  /// The URL to load in the `WebView`.
  @override
  final String url;

  /// Sets whether JavaScript execution is enabled.
  ///
  /// Default value is `JavaScriptMode.unrestricted`.
  @override
  @JsonKey()
  final JavaScriptMode javaScriptMode;

  /// Background color of the `WebView`.
  ///
  /// Default value is `#FFFFFF`.
  @override
  @JsonKey()
  final String backgroundColor;

  /// The user agent for the `WebView`.
  @override
  final String? userAgent;

  /// Sets whether zoom is enabled for the `WebView`.
  ///
  /// Default value is `false`.
  @override
  @JsonKey()
  final bool enableZoom;

  /// The layout direction for the `WebView`.
  ///
  /// Default value is `TextDirection.ltr`.
  @override
  @JsonKey()
  final TextDirection layoutDirection;

  /// Create a copy of PhlutsWebView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PhlutsWebViewCopyWith<_PhlutsWebView> get copyWith =>
      __$PhlutsWebViewCopyWithImpl<_PhlutsWebView>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PhlutsWebViewToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhlutsWebView &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.javaScriptMode, javaScriptMode) ||
                other.javaScriptMode == javaScriptMode) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.enableZoom, enableZoom) ||
                other.enableZoom == enableZoom) &&
            (identical(other.layoutDirection, layoutDirection) ||
                other.layoutDirection == layoutDirection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, javaScriptMode,
      backgroundColor, userAgent, enableZoom, layoutDirection);

  @override
  String toString() {
    return 'PhlutsWebView(url: $url, javaScriptMode: $javaScriptMode, backgroundColor: $backgroundColor, userAgent: $userAgent, enableZoom: $enableZoom, layoutDirection: $layoutDirection)';
  }
}

/// @nodoc
abstract mixin class _$PhlutsWebViewCopyWith<$Res>
    implements $PhlutsWebViewCopyWith<$Res> {
  factory _$PhlutsWebViewCopyWith(
          _PhlutsWebView value, $Res Function(_PhlutsWebView) _then) =
      __$PhlutsWebViewCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String url,
      JavaScriptMode javaScriptMode,
      String backgroundColor,
      String? userAgent,
      bool enableZoom,
      TextDirection layoutDirection});
}

/// @nodoc
class __$PhlutsWebViewCopyWithImpl<$Res> implements _$PhlutsWebViewCopyWith<$Res> {
  __$PhlutsWebViewCopyWithImpl(this._self, this._then);

  final _PhlutsWebView _self;
  final $Res Function(_PhlutsWebView) _then;

  /// Create a copy of PhlutsWebView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? javaScriptMode = null,
    Object? backgroundColor = null,
    Object? userAgent = freezed,
    Object? enableZoom = null,
    Object? layoutDirection = null,
  }) {
    return _then(_PhlutsWebView(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      javaScriptMode: null == javaScriptMode
          ? _self.javaScriptMode
          : javaScriptMode // ignore: cast_nullable_to_non_nullable
              as JavaScriptMode,
      backgroundColor: null == backgroundColor
          ? _self.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: freezed == userAgent
          ? _self.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String?,
      enableZoom: null == enableZoom
          ? _self.enableZoom
          : enableZoom // ignore: cast_nullable_to_non_nullable
              as bool,
      layoutDirection: null == layoutDirection
          ? _self.layoutDirection
          : layoutDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
    ));
  }
}

// dart format on
