/// Defines how the PhlutsRefreshIndicator can be triggered, mirroring
/// Flutter's [RefreshIndicatorTriggerMode].
enum PhlutsRefreshIndicatorTriggerMode {
  /// The indicator can be triggered when the scrollable reaches the edge.
  /// This corresponds to [RefreshIndicatorTriggerMode.onEdge].
  onEdge,

  /// The indicator can be triggered anywhere in the scrollable.
  /// This corresponds to [RefreshIndicatorTriggerMode.anywhere].
  anywhere,
}
