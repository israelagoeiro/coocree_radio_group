import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/radio_item.dart';
import 'package:flutter/material.dart';

class RowThreeColumn extends StatefulWidget {
  final List<ItemNameValue> listItemNameValue;
  final int maxColumns;

  const RowThreeColumn({super.key, required this.listItemNameValue, this.maxColumns = 3});

  @override
  State<RowThreeColumn> createState() => _RowThreeColumnState();
}

class _RowThreeColumnState extends State<RowThreeColumn> {
  Object? groupValue;

  Column buildWidget() {
    List<Widget> listChildren = [];

    int len = widget.listItemNameValue.length;

    int countItems = 1;

    List<Widget> listItemNameValue = [];
    for (int i = 0; i < len; i++) {
      if (countItems <= widget.maxColumns) {
        Widget item = RadioItem(
          groupValue: groupValue,
          itemNameValue: widget.listItemNameValue[i],
          onChanged: (value){
            setState(() {
              groupValue = value;
            });
            print(value);
          },
        );
        listItemNameValue.add(item);
        print(countItems.toString() + "==" + widget.maxColumns.toString());
        if(countItems >= widget.maxColumns){
          listChildren.add(Row(children: listItemNameValue));
          listItemNameValue = [];
          countItems = 0;
        }
      }
      countItems++;
    }

    return Column(
      children: listChildren,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget();
    /*return Column(
      children: [
        Row(
          children: [
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[0],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[1],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[2],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
          ],
        ),
        Row(
          children: [
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[3],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[4],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
            RadioItem(
              groupValue: groupValue,
              itemNameValue: widget.listItemNameValue[5],
              onChanged: (value){
                setState(() {
                  groupValue = value;
                });
                print(value);
              },
            ),
          ],
        ),
      ],
    );*/
  }
}
