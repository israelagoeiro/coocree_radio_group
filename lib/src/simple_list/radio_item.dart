import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

class RadioItem<T> extends StatefulWidget {
  final Object? groupValue;
  final OptionItem optionItem;
  final ValueChanged<String?>? onChanged;
  final FormFieldState<String> state;

  const RadioItem({
    Key? key,
    required this.groupValue,
    required this.optionItem,
    required this.onChanged,
    required this.state,
  }) : super(key: key);

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          value: widget.optionItem.value,
          groupValue: widget.state.value,
          onChanged: (value) {
            widget.onChanged!(value);
            widget.state.didChange(value);
            widget.state.validate();
          },
        ),
        InkWell(
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            widget.onChanged!(widget.optionItem.value);
            widget.state.didChange(widget.optionItem.value);
            widget.state.validate();
          },
          child: Text(widget.optionItem.label),
        ),
      ],
    );
  }
}
