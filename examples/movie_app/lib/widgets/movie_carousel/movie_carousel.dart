import 'package:json_annotation/json_annotation.dart';
import 'package:phluts/phluts_core.dart';

part 'movie_carousel.g.dart';

/// A Phluts model representing a movie carousel widget.
///
/// Displays a carousel of trending movies fetched from a network request.
///
/// {@tool snippet}
/// Dart Example:
/// ```dart
/// PhlutsMovieCarousel(
///   request: PhlutsNetworkRequest(
///     url: 'https://api.themoviedb.org/3/trending/movie/day',
///     method: Method.get,
///   ),
/// )
/// ```
/// {@end-tool}
///
/// {@tool snippet}
/// JSON Example:
/// ```json
/// {
///   "type": "movieCarousel",
///   "request": {
///     "actionType": "networkRequest",
///     "url": "https://api.themoviedb.org/3/trending/movie/day",
///     "method": "get"
///   }
/// }
/// ```
/// {@end-tool}
@JsonSerializable()
class PhlutsMovieCarousel extends PhlutsWidget {
  const PhlutsMovieCarousel({required this.request});

  /// The network request to fetch movie data for the carousel.
  final PhlutsNetworkRequest request;

  /// Widget type identifier.
  @override
  String get type => 'movieCarousel';

  /// Creates a [PhlutsMovieCarousel] from a JSON map.
  factory PhlutsMovieCarousel.fromJson(Map<String, dynamic> json) =>
      _$PhlutsMovieCarouselFromJson(json);

  /// Converts this [PhlutsMovieCarousel] instance to a JSON map.
  @override
  Map<String, dynamic> toJson() => _$PhlutsMovieCarouselToJson(this);
}
