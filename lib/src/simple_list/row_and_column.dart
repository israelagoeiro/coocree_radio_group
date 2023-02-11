import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/radio_item.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  final List<ItemNameValue> listItemNameValue;
  final int maxColumns;
  final BoxConstraints constraints;

  const RowAndColumn({
    super.key,
    required this.listItemNameValue,
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

    int len = widget.listItemNameValue.length;
    int maxItems = len % widget.maxColumns;

    for (int i = 0; i < len - maxItems; i += widget.maxColumns) {
      List listGroup = widget.listItemNameValue.sublist(i, i + widget.maxColumns);
      List<Widget> listItemNameValue = [];
      for (var element in listGroup) {
        Widget item = SizedBox(
          width: widget.constraints.maxWidth,
          child: RadioItem(
            groupValue: groupValue,
            itemNameValue: element,
            onChanged: (value) {
              setState(() {
                groupValue = value;
              });
            },
          ),
        );
        listItemNameValue.add(item);
      }
      listChildren.add(Row(children: listItemNameValue));
    }

    if (maxItems != 0) {
      List listGroup = widget.listItemNameValue.sublist(widget.listItemNameValue.length - maxItems);
      List<Widget> listItemNameValue = [];
      for (var element in listGroup) {
        Widget item = SizedBox(
          width: widget.constraints.maxWidth,
          child: RadioItem(
            groupValue: groupValue,
            itemNameValue: element,
            onChanged: (value) {
              setState(() {
                print('BBBBBBBBBBBBBBBBB');
                print(value);
                groupValue = value;
              });
            },
          ),
        );
        listItemNameValue.add(item);
      }
      listChildren.add(Row(children: listItemNameValue));
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
