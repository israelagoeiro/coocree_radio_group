import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/radio_item.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  final List<LabelValueString> listLabelValueString;
  final int maxColumns;
  final BoxConstraints constraints;

  const RowAndColumn({
    super.key,
    required this.listLabelValueString,
    required this.constraints,
    this.maxColumns = 3,
  });

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  Object? groupValue;

  Column buildWidget() {
    List<Widget> listChildren = [];

    int len = widget.listLabelValueString.length;
    int maxItems = len % widget.maxColumns;

    for (int i = 0; i < len - maxItems; i += widget.maxColumns) {
      List listGroup = widget.listLabelValueString.sublist(i, i + widget.maxColumns);
      List<Widget> listLabelValueString = [];
      for (var element in listGroup) {
        Widget item = SizedBox(
          width: widget.constraints.maxWidth,
          child: RadioItem(
            groupValue: groupValue,
            labelValueString: element,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
          ),
        );
        listLabelValueString.add(item);
      }
      listChildren.add(Row(children: listLabelValueString));
    }

    if (maxItems != 0) {
      List listGroup = widget.listLabelValueString.sublist(widget.listLabelValueString.length - maxItems);
      List<Widget> listLabelValueString = [];
      for (var element in listGroup) {
        Widget item = SizedBox(
          width: widget.constraints.maxWidth,
          child: RadioItem(
            groupValue: groupValue,
            labelValueString: element,
            onChanged: (value) {
              setState(() {
                print('BBBBBBBBBBBBBBBBB');
                print(value);
                groupValue = value;
              });
            },
          ),
        );
        listLabelValueString.add(item);
      }
      listChildren.add(Row(children: listLabelValueString));
    }

    return Column(
      children: listChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget();
  }
}
