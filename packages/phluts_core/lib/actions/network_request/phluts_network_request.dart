import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_action.dart';
import 'package:phluts_core/foundation/specifications/action_type.dart';

part 'phluts_network_request.g.dart';

/// HTTP methods for [PhlutsNetworkRequest].
///
/// Common verbs used for RESTful requests.
enum Method {
  /// HTTP GET request.
  get,

  /// HTTP POST request.
  post,

  /// HTTP PUT request.
  put,

  /// HTTP DELETE request.
  delete,
}

/// A Phluts action that performs HTTP network requests.
///
/// This action makes HTTP requests to specified URLs and can execute different
/// actions based on the response status code using [results]. Supports all
/// common HTTP methods (GET, POST, PUT, DELETE) and allows customization of
/// headers, query parameters, and request body.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsNetworkRequest(
///   url: 'https://api.example.com/users',
///   method: Method.post,
///   headers: {'Authorization': 'Bearer token123'},
///   body: {'name': 'John', 'email': 'john@example.com'},
///   results: [
///     PhlutsNetworkResult(
///       statusCode: 200,
///       action: {'type': 'navigate', 'routeName': '/success'}
///     ),
///     PhlutsNetworkResult(
///       statusCode: 400,
///       action: {'type': 'showSnackBar', 'message': 'Invalid data'}
///     ),
///   ],
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "networkRequest",
///   "url": "https://api.example.com/users",
///   "method": "post",
///   "headers": {"Authorization": "Bearer token123"},
///   "body": {"name": "John", "email": "john@example.com"},
///   "results": [
///     {
///       "statusCode": 200,
///       "action": {"type": "navigate", "routeName": "/success"}
///     },
///     {
///       "statusCode": 400,
///       "action": {"type": "showSnackBar", "message": "Invalid data"}
///     }
///   ]
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNetworkRequest extends PhlutsAction {
  /// Creates a [PhlutsNetworkRequest] to perform an HTTP call.
  const PhlutsNetworkRequest({
    required this.url,
    this.method = Method.get,
    this.queryParameters,
    this.headers,
    this.contentType,
    this.body,
    this.results = const [],
  });

  /// The absolute or relative URL to request.
  final String url;

  /// The HTTP method to use. Defaults to [Method.get].
  final Method method;

  /// Optional key-value pairs appended to the URL as query parameters.
  final Map<String, dynamic>? queryParameters;

  /// Optional request headers.
  final Map<String, dynamic>? headers;

  /// The Content-Type header value (e.g., `application/json`).
  final String? contentType;

  /// The request payload. Can be a map, list, string, or bytes depending on encoder.
  final dynamic body;

  /// List of conditional results that map a response status code to an action.
  final List<PhlutsNetworkResult> results;

  /// Action type identifier.
  @override
  String get actionType => ActionType.networkRequest.name;

  /// Creates a [PhlutsNetworkRequest] from a JSON map.
  factory PhlutsNetworkRequest.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNetworkRequestFromJson(json);

  /// Converts this [PhlutsNetworkRequest] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsNetworkRequestToJson(this);
}

/// A conditional result that maps HTTP status codes to actions.
///
/// Used with [PhlutsNetworkRequest] to define different actions to execute
/// based on the HTTP response status code. This allows for sophisticated
/// error handling and conditional flows based on network request outcomes.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// const PhlutsNetworkResult(
///   statusCode: 404,
///   action: {
///     'type': 'showSnackBar',
///     'message': 'Resource not found'
///   },
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "statusCode": 404,
///   "action": {
///     "type": "showSnackBar",
///     "message": "Resource not found"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsNetworkResult {
  /// Creates a mapping from an HTTP [statusCode] to an action payload.
  const PhlutsNetworkResult({required this.statusCode, required this.action});

  /// The HTTP status code to match (e.g., 200, 400, 500).
  final int statusCode;

  /// The action to execute when [statusCode] matches.
  ///
  /// This should be a JSON map that describes a Phluts action
  /// (e.g., `{ "type": "navigate", ... }`).
  final Map<String, dynamic> action;

  /// Creates a [PhlutsNetworkResult] from a JSON map.
  factory PhlutsNetworkResult.fromJson(Map<String, dynamic> json) =>
      _$PhlutsNetworkResultFromJson(json);

  /// Converts this [PhlutsNetworkResult] instance to a JSON map.
  Map<String, dynamic> toJson() => _$PhlutsNetworkResultToJson(this);
}
