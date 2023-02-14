import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/radio_item.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  final List<LabelValue> listLabelValue;
  final int maxColumns;
  final BoxConstraints constraints;
  final double width;

  const RowAndColumn({
    super.key,
    required this.listLabelValue,
    required this.constraints,
    required this.maxColumns,
    required this.width,
  });

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  Object? groupValue;

  Column buildWidget() {
    List<Widget> listChildren = [];

    int len = widget.listLabelValue.length;
    int maxItems = len % widget.maxColumns;

    for (int i = 0; i < len - maxItems; i += widget.maxColumns) {
      List listGroup = widget.listLabelValue.sublist(i, i + widget.maxColumns);
      List<Widget> listLabelValue = [];
      for (var element in listGroup) {
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(
            maxWidth: widget.constraints.maxWidth,
          ),
          /*decoration: BoxDecoration(
            color: Colors.lightGreen.withOpacity(0.3),
            border: Border.all(width: 1, color: Colors.deepPurpleAccent),
          ),*/
          child: RadioItem(
            groupValue: groupValue,
            labelValue: element,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
          ),
        );
        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
    }

    if (maxItems != 0) {
      List listGroup = widget.listLabelValue.sublist(widget.listLabelValue.length - maxItems);
      List<Widget> listLabelValue = [];
      for (var element in listGroup) {
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(maxWidth: widget.constraints.maxWidth),
          /*decoration: BoxDecoration(
            color: Colors.lightGreen.withOpacity(0.3),
            border: Border.all(width: 1, color: Colors.deepPurpleAccent),
          ),*/
          child: RadioItem(
            groupValue: groupValue,
            labelValue: element,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
          ),
        );

        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
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
