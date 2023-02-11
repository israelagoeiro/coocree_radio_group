import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

class RowTwoColumn extends StatefulWidget {

  const RowTwoColumn({super.key});

  @override
  State<RowTwoColumn> createState() => _RowTwoColumnState();
}

class _RowTwoColumnState extends State<RowTwoColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.green,
    );
  }
}
