import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/row_and_column.dart';
import 'package:flutter/material.dart';

class SimpleRadioFormField extends FormField<String> {
  final String? initialValue;

  final List<OptionItem> options;

  /// The minimum width that satisfies the constraints.
  final double minWidth;

  /// The maximum width that satisfies the constraints.
  final double maxWidth;

  final String? errorText;

  final ValueChanged<String?>? onChanged;

  SimpleRadioFormField({
    super.key,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    this.initialValue,
    required this.options,
    this.minWidth = 230,
    this.maxWidth = 230,
    this.errorText,
    this.onChanged,
  }) : super(
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          builder: (FormFieldState<String> state) {
            dynamic rowAndColumn(BoxConstraints constraints) {
              int maxColumns = (constraints.maxWidth / maxWidth).round();
              double columnMaxWidth = constraints.maxWidth / maxColumns;

              BoxConstraints boxConstraints = BoxConstraints(maxWidth: columnMaxWidth);
              if (boxConstraints.maxWidth > maxWidth) {
                boxConstraints = BoxConstraints(maxWidth: maxWidth);
              }

              return RowAndColumn(
                options: options,
                maxColumns: maxColumns,
                constraints: boxConstraints,
                width: (constraints.maxWidth / maxColumns),
                state: state,
                onChanged: onChanged,
              );
            }

            return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
              return rowAndColumn(constraints);
            });
          },
        );
}
