import 'package:flutter/material.dart';

class FlexibleGridView extends StatelessWidget {

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final int crossAxisCount;
  final double mainSpacing;
  final double crossSpacing;
  final EdgeInsets padding;

  const FlexibleGridView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.crossAxisCount,
    this.mainSpacing = 8,
    this.crossSpacing = 8,
    this.padding = const EdgeInsets.all(8),
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: padding,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: mainSpacing,
        crossAxisSpacing: crossSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
