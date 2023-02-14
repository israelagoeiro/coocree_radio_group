import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/row_and_column.dart';
import 'package:flutter/material.dart';

// Widget que exibe um grupo de radio buttons em uma grade simples
class SimpleRadioFormField extends FormField<String> {
  // O valor inicial do formulário
  final String? initialValue;

  // As opções a serem exibidas
  final List<OptionItem> options;

  // A largura mínima do item do radio button
  final double minWidth;

  // A largura máxima do item do radio button
  final double maxWidth;

  // O texto de erro a ser exibido
  final String? errorText;

  // Função chamada quando um item do radio button é alterado
  final ValueChanged<String?>? onChanged;

  SimpleRadioFormField({
    Key? key,
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
      // Método que constrói a grade de radio buttons
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

      // Usa um LayoutBuilder para passar as restrições de tamanho para o método rowAndColumn
      return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return rowAndColumn(constraints);
        },
      );
    },
  );
}
