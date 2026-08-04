import 'package:json_annotation/json_annotation.dart';
import 'package:phluts_core/core/phluts_widget.dart';

part 'phluts_duration.g.dart';

/// A Phluts model representing Flutter's [Duration] class.
///
/// Represents a span of time with various time units.
///
/// ```dart
/// PhlutsDuration(
///   days: 1,
///   hours: 2,
///   minutes: 30,
///   seconds: 45,
///   milliseconds: 500,
/// )
/// ```
///
/// ```json
/// {
///   "days": 1,
///   "hours": 2,
///   "minutes": 30,
///   "seconds": 45,
///   "milliseconds": 500,
///   "microseconds": 0
/// }
/// ```
@JsonSerializable()
class PhlutsDuration extends PhlutsElement {
  /// Creates a [PhlutsDuration] with the given time components.
  const PhlutsDuration({
    this.days,
    this.hours,
    this.minutes,
    this.seconds,
    this.milliseconds,
    this.microseconds,
  });

  /// The number of days in this duration.
  final int? days;

  /// The number of hours in this duration.
  final int? hours;

  /// The number of minutes in this duration.
  final int? minutes;

  /// The number of seconds in this duration.
  final int? seconds;

  /// The number of milliseconds in this duration.
  final int? milliseconds;

  /// The number of microseconds in this duration.
  final int? microseconds;

  /// Creates a [PhlutsDuration] from JSON.
  factory PhlutsDuration.fromJson(Map<String, dynamic> json) =>
      _$PhlutsDurationFromJson(json);

  /// Converts this duration to JSON.
  @override
  Map<String, dynamic> toJson() => _$PhlutsDurationToJson(this);
}
