import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/row_and_column.dart';
import 'package:flutter/material.dart';

class SimpleListColumn extends StatefulWidget {
  final List<LabelValueString> children;
  final BoxConstraints constraints;

  const SimpleListColumn({
    Key? key,
    required this.children,
    this.constraints = const BoxConstraints(maxWidth: 200, minWidth: 250),
  }) : super(key: key);

  @override
  State<SimpleListColumn> createState() => _SimpleListColumnState();
}

/// Type of Screen
///
/// This can either be mobile or tablet
enum ScreenType { mobile, tablet, desktop }

class _SimpleListColumnState extends State<SimpleListColumn> {
  String _SelectedOption = 'testA';

  ScreenType getScreenType(BoxConstraints constraints) {
    ScreenType result = ScreenType.mobile;
    if (constraints.maxWidth > 800) {
      result = ScreenType.tablet;
    }
    if (constraints.maxWidth > 1100) {
      result = ScreenType.desktop;
    }
    return result;
  }

  dynamic rowAndColumn(BoxConstraints constraints) {
    print("minWidth: ${constraints.minWidth}");
    print("maxWidth: ${constraints.maxWidth}");

    ScreenType screenType = getScreenType(constraints);
    int maxColumns = 1;
    switch (screenType) {
      case ScreenType.desktop:
        maxColumns = 3;
        break;
      case ScreenType.tablet:
        maxColumns = 2;
        break;
      case ScreenType.mobile:
        maxColumns = 1;
        break;
    }

    double columnMaxWidth = constraints.maxWidth / maxColumns;
    print("columnMaxWidth: $columnMaxWidth");

    BoxConstraints boxConstraints = BoxConstraints(maxWidth: columnMaxWidth);
    if (boxConstraints.maxWidth > widget.constraints.maxWidth) {
      boxConstraints = BoxConstraints(maxWidth: widget.constraints.maxWidth);
    }

    return RowAndColumn(
      listLabelValueString: widget.children,
      maxColumns: maxColumns,
      constraints: boxConstraints,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      return rowAndColumn(constraints);
    });
  }
}
