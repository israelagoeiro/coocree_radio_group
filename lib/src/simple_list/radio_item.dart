import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

class RadioItem<T> extends StatefulWidget {
  final Object? groupValue;
  final LabelValue labelValue;
  final ValueChanged<T?>? onChanged;

  const RadioItem({
    Key? key,
    required this.groupValue,
    required this.labelValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          value: widget.labelValue,
          groupValue: widget.groupValue,
          onChanged: widget.onChanged,
        ),
        InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            widget.onChanged!(widget.labelValue);
          },
          child: Text(widget.labelValue.label),
        ),
      ],
    );
  }
}
