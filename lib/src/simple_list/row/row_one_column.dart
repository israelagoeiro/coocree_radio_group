import 'package:flutter/material.dart';

class RowOneColumn extends StatefulWidget {
  const RowOneColumn({super.key});

  @override
  State<RowOneColumn> createState() => _RowOneColumnState();
}

class _RowOneColumnState extends State<RowOneColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.red,
    );
  }
}
