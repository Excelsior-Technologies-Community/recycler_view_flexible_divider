import 'package:flutter/material.dart';
import 'flexible_divider.dart';

class FlexibleSliverList extends StatelessWidget {

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final FlexibleDivider divider;

  const FlexibleSliverList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    required this.divider,
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> children = [];

    for (int i = 0; i < itemCount; i++) {

      if (i != 0 || divider.showFirstDivider) {
        children.add(_divider());
      }

      children.add(itemBuilder(context, i));
    }

    if (divider.showLastDivider) {
      children.add(_divider());
    }

    return SliverList(
      delegate: SliverChildListDelegate(children),
    );
  }

  Widget _divider() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: divider.topSpacing,
        horizontal: divider.startIndent,
      ),
      child: Container(
        height: divider.thickness,
        color: divider.color,
      ),
    );
  }
}
