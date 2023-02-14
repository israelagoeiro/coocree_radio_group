import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/radio_item.dart';
import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  final BoxConstraints constraints;
  final int maxColumns;
  final List<OptionItem> options;
  final FormFieldState<String> state;
  final double width;
  final ValueChanged<String?>? onChanged;

  const RowAndColumn({
    super.key,
    required this.constraints,
    required this.maxColumns,
    required this.options,
    required this.state,
    required this.width,
    required this.onChanged,
  });

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  Column buildWidget() {
    List<Widget> listChildren = [];
    int len = widget.options.length;
    int maxItems = len % widget.maxColumns;

    for (int i = 0; i < len - maxItems; i += widget.maxColumns) {
      List listGroup = widget.options.sublist(i, i + widget.maxColumns);
      List<Widget> listLabelValue = [];
      for (var element in listGroup) {
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(maxWidth: widget.constraints.maxWidth),
          child: RadioItem(
            state: widget.state,
            groupValue: widget.state.value,
            optionItem: element,
            onChanged: widget.onChanged,
          ),
        );
        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
    }

    if (maxItems != 0) {
      List listGroup = widget.options.sublist(widget.options.length - maxItems);
      List<Widget> listLabelValue = [];
      for (var element in listGroup) {
        Widget item = Container(
          width: widget.width,
          constraints: BoxConstraints(maxWidth: widget.constraints.maxWidth),
          child: RadioItem(
            state: widget.state,
            groupValue: widget.state.value,
            optionItem: element,
            onChanged: widget.onChanged,
          ),
        );
        listLabelValue.add(item);
      }
      listChildren.add(Row(children: listLabelValue));
    }

    if (widget.state.hasError) {
      listChildren.add(Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          widget.state.errorText!,
          style: const TextStyle(color: Colors.red),
        ),
      ));
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
