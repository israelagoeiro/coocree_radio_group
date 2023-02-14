import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/row_and_column.dart';
import 'package:flutter/material.dart';

class SimpleListColumn<T> extends StatefulWidget {
  final List<LabelValue> children;

  /// The minimum width that satisfies the constraints.
  final double minWidth;

  /// The maximum width that satisfies the constraints.
  final double maxWidth;

   SimpleListColumn({
    Key? key,
    required this.children,
    this.minWidth = 230,
    this.maxWidth = 230,
  })  : assert(maxWidth>=minWidth),
        super(key: key){
    print("aaaaaaaaaaaaaaaaaaaaaa");
     print(maxWidth);
    print(minWidth);
  }

  @override
  State<SimpleListColumn> createState() => _SimpleListColumnState();
}

/// Type of Screen
///
/// This can either be mobile or tablet
enum ScreenType { mobile, tablet, desktop }

class _SimpleListColumnState extends State<SimpleListColumn> {
  dynamic rowAndColumn(BoxConstraints constraints) {
    int maxColumns = (constraints.maxWidth / widget.maxWidth).round();
    double columnMaxWidth = constraints.maxWidth / maxColumns;

    print("==========================================");
    print("minWidth: ${constraints.minWidth}");
    print("maxWidth: ${constraints.maxWidth}");
    print("columnMaxWidth: $columnMaxWidth");
    print("maxWidth: ${widget.maxWidth}");
    print("maxWidth: ${(constraints.maxWidth / widget.maxWidth).round()}");
    print("columnWidth: ${(constraints.maxWidth / maxColumns)}");

    BoxConstraints boxConstraints = BoxConstraints(maxWidth: columnMaxWidth);
    if (boxConstraints.maxWidth > widget.maxWidth) {
      boxConstraints = BoxConstraints(maxWidth: widget.maxWidth);
    }

    return RowAndColumn(
      listLabelValue: widget.children,
      maxColumns: maxColumns,
      constraints: boxConstraints,
      width: (constraints.maxWidth / maxColumns),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return rowAndColumn(constraints);
    });
  }
}
