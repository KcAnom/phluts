import 'package:flutter/material.dart';
import 'package:phluts_core/phluts_core.dart';

/// Extends [PhlutsTraversalEdgeBehavior] to provide parsing functionality.
extension PhlutsTraversalEdgeBehaviorParser on PhlutsTraversalEdgeBehavior? {
  /// Parses this [PhlutsTraversalEdgeBehavior] into Flutter's [TraversalEdgeBehavior].
  TraversalEdgeBehavior? get parse {
    switch (this) {
      case PhlutsTraversalEdgeBehavior.closedLoop:
        return TraversalEdgeBehavior.closedLoop;
      case PhlutsTraversalEdgeBehavior.leaveFlutterView:
        return TraversalEdgeBehavior.leaveFlutterView;
      case PhlutsTraversalEdgeBehavior.parentScope:
        return TraversalEdgeBehavior.parentScope;
      case PhlutsTraversalEdgeBehavior.stop:
        return TraversalEdgeBehavior.stop;
      default:
        return null;
    }
  }
}
