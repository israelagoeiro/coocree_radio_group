import 'package:coocree_radio_group/package.dart';
import 'package:coocree_radio_group/src/simple_list/row/row_one_column.dart';
import 'package:coocree_radio_group/src/simple_list/row/row_three_column.dart';
import 'package:coocree_radio_group/src/simple_list/row/row_two_column.dart';
import 'package:flutter/material.dart';

class SimpleListColumn extends StatefulWidget {
  final List<ItemNameValue> children;

  const SimpleListColumn({Key? key, required this.children}) : super(key: key);

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

  Color getColor(BoxConstraints constraints) {
    ScreenType screenType = getScreenType(constraints);
    switch (screenType) {
      case ScreenType.desktop:
        return Colors.red;
      case ScreenType.tablet:
        return Colors.black;
      case ScreenType.mobile:
        return Colors.green;
    }
  }

  dynamic getRow(BoxConstraints constraints) {
    ScreenType screenType = getScreenType(constraints);
    switch (screenType) {
      case ScreenType.desktop:
        return const RowOneColumn();
      case ScreenType.tablet:
        return const RowTwoColumn();
      case ScreenType.mobile:
        return RowThreeColumn(
          listItemNameValue: widget.children,
          maxColumns: 3,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      print(constraints.maxWidth);
      ScreenType screenType = getScreenType(constraints);
      /*return Container(
        width: 100,
        height: 100,
        color: getColor(constraints),
      );*/
      return getRow(constraints);
    });
    /*return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 10.h,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Text('TIPO'),
            )
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 50.w,
                  child: RadioListTile(
                    value: 'TestA',
                    title: const Text('Incluir 1 Simuc'),
                    groupValue: _SelectedOption,
                    onChanged: (value) {
                      setState(() {
                        _SelectedOption = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );*/
  }
}
