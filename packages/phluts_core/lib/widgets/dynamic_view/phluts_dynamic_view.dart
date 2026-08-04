import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/actions/network_request/phluts_network_request.dart';
import 'package:phluts_core/core/phluts_widget.dart';
import 'package:phluts_core/foundation/specifications/widget_type.dart';

part 'phluts_dynamic_view.g.dart';

/// A Phluts model for dynamically fetching data and rendering it using a template.
///
/// This widget makes a network request based on the [request] configuration.
/// The fetched data, potentially targeted by [targetPath], is then used to
/// render the [template].
/// The full response can be stored in the Phluts context using [resultTarget].
/// It also supports custom widgets for [loaderWidget], [emptyTemplate] (if data is empty),
/// and [errorWidget] states.
///
/// ```dart
/// PhlutsDynamicView(
///   request: PhlutsNetworkRequest(url: 'https://api.example.com/data'),
///   template: PhlutsText(data: 'Name: \${data.name}'), // Example: template uses data binding
///   targetPath: 'items', // Path to the list within the response
///   resultTarget: 'apiData', // Where to store the full response in context
///   loaderWidget: PhlutsCircularProgressIndicator(),
///   emptyTemplate: PhlutsText(data: 'No items found.'),
/// )
/// ```
///
/// ```json
/// {
///   "type": "dynamicView",
///   "request": {
///     "url": "https://api.example.com/data",
///     "method": "GET"
///   },
///   "template": {
///     "type": "text",
///     "data": "Name: \${data.name}"
///   },
///   "targetPath": "items",
///   "resultTarget": "apiData",
///   "loaderWidget": {
///     "type": "circularProgressIndicator"
///   },
///   "emptyTemplate": {
///     "type": "text",
///     "data": "No items found."
///   }
/// }
/// ```
@JsonSerializable()
class PhlutsDynamicView extends PhlutsWidget {
  /// Creates a [PhlutsDynamicView] with the given properties.
  const PhlutsDynamicView({
    required this.request,
    this.template,
    this.targetPath,
    this.resultTarget,
    this.emptyTemplate,
    this.loaderWidget,
    this.errorWidget,
  });

  /// Configuration for the network request to fetch data.
  final PhlutsNetworkRequest request;

  /// Path within the fetched JSON data to find the actual content to be rendered.
  final String? targetPath;

  /// The PhlutsWidget template used to render the fetched data.
  final PhlutsWidget? template;

  /// Path in the Phluts context where the full JSON response will be stored.
  final String? resultTarget;

  /// Optional PhlutsWidget to display if the fetched data is empty or null.
  final PhlutsWidget? emptyTemplate;

  /// Optional PhlutsWidget to display while the network request is in progress.
  final PhlutsWidget? loaderWidget;

  /// Optional PhlutsWidget to display if the network request fails.
  final PhlutsWidget? errorWidget;

  /// Widget type identifier.
  @override
  String get type => WidgetType.dynamicView.name;

  /// Creates a [PhlutsDynamicView] from a JSON map.
  factory PhlutsDynamicView.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDynamicViewFromJson(json);

  /// Converts this [PhlutsDynamicView] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDynamicViewToJson(this);
}
