import 'package:flutter/material.dart';
import 'flexible_divider.dart';

class FlexibleDividerListView extends StatelessWidget {

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final FlexibleDivider divider;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  const FlexibleDividerListView({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.divider,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {

    int totalItems = itemCount * 2;

    if (!divider.showFirstDivider) totalItems--;
    if (!divider.showLastDivider) totalItems--;

    return ListView.builder(
      itemCount: totalItems,
      padding: padding,
      physics: physics,
      shrinkWrap: shrinkWrap,
      itemBuilder: (context, index) {

        bool isDivider = index.isOdd;

        if (!divider.showFirstDivider) index++;

        if (isDivider) {
          return _buildDivider();
        } else {
          int itemIndex = index ~/ 2;
          return itemBuilder(context, itemIndex);
        }
      },
    );
  }

  Widget _buildDivider() {
    return Padding(
      padding: EdgeInsets.only(
        top: divider.topSpacing,
        bottom: divider.bottomSpacing,
        left: divider.startIndent,
        right: divider.endIndent,
      ),
      child: Container(
        height: divider.thickness,
        color: divider.color,
      ),
    );
  }
}
