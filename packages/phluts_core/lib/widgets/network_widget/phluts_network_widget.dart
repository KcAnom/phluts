import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/foundation.dart';

part 'phluts_network_widget.g.dart';

/// A Phluts model representing a network-driven widget.
///
/// This widget triggers a [PhlutsNetworkRequest] to fetch a Phluts UI JSON from a
/// URL and renders it. Optionally, you can provide custom loading and error
/// widgets to display during the network request lifecycle.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsNetworkWidget(
///   request: PhlutsNetworkRequest(
///     url: 'https://example.com/data',
///     method: 'get',
///   ),
///   loadingWidget: PhlutsCenter(
///     child: PhlutsCircularProgressIndicator(),
///   ),
///   errorWidget: PhlutsCenter(
///     child: PhlutsText(data: 'Failed to load'),
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "networkWidget",
///   "request": {
///     "actionType": "networkRequest",
///     "url": "https://example.com/data",
///     "method": "get"
///   },
///   "loadingWidget": {
///     "type": "center",
///     "child": {
///       "type": "circularProgressIndicator"
///     }
///   },
///   "errorWidget": {
///     "type": "center",
///     "child": {
///       "type": "text",
///       "data": "Failed to load"
///     }
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNetworkWidget extends PhlutsWidget {
  /// Creates a [PhlutsNetworkWidget].
  ///
  /// The [request] parameter is required and defines the network request
  /// to execute. The [loadingWidget] and [errorWidget] parameters are
  /// optional and allow you to customize the loading and error states.
  const PhlutsNetworkWidget({
    required this.request,
    this.loadingWidget,
    this.errorWidget,
  });

  /// The network request to execute.
  ///
  /// This defines the URL, method, headers, and body for the network request.
  final PhlutsNetworkRequest request;

  /// Optional widget to display while the network request is in progress.
  ///
  /// If not provided, a default loading indicator is shown.
  final PhlutsWidget? loadingWidget;

  /// Optional widget to display when the network request fails.
  ///
  /// If not provided, an empty [SizedBox] is shown on error.
  final PhlutsWidget? errorWidget;

  /// Widget type identifier.
  @override
  String get type => WidgetType.networkWidget.name;

  /// Creates a [PhlutsNetworkWidget] from a JSON map.
  factory PhlutsNetworkWidget.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNetworkWidgetFromJson(json);

  /// Converts this [PhlutsNetworkWidget] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNetworkWidgetToJson(this);
}
