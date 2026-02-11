import 'package:flutter/material.dart';

class FlexibleDivider {

  final double thickness;
  final double topSpacing;
  final double bottomSpacing;
  final double startIndent;
  final double endIndent;
  final Color color;
  final bool showFirstDivider;
  final bool showLastDivider;

  const FlexibleDivider({
    this.thickness = 1,
    this.topSpacing = 4,
    this.bottomSpacing = 4,
    this.startIndent = 0,
    this.endIndent = 0,
    this.color = Colors.grey,
    this.showFirstDivider = false,
    this.showLastDivider = false,
  });
}
