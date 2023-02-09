import 'package:flutter/material.dart';

class SimpleListColumn extends StatefulWidget {
  const SimpleListColumn({Key? key}) : super(key: key);

  @override
  State<SimpleListColumn> createState() => _SimpleListColumnState();
}

class _SimpleListColumnState extends State<SimpleListColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        width: 100,
        height: 200,
    );
  }
}
