import 'package:flutter/material.dart';

class RowThreeColumn extends StatefulWidget {
  const RowThreeColumn({super.key});

  @override
  State<RowThreeColumn> createState() => _RowThreeColumnState();
}

class _RowThreeColumnState extends State<RowThreeColumn> {
  int _radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    _radioValue = 1;
                  });
                  print("AAA");
                },
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                        print("BBB");
                      },
                    ),
                    Text('Manta'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 2;
                  });
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                    ),
                    Text('Porta Travesseiro'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 3;
                  });
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      value: 3,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                    ),
                    Text('Almofadas'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 4;
                  });
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      value: 4,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                    ),
                    Text('Peseira'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 5;
                  });
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      value: 5,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                    ),
                    Text('Capa de Almofadas'),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 6;
                  });
                },
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Row(
                  children: [
                    Radio(
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      value: 6,
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value!;
                        });
                      },
                    ),
                    Text('Jogo Americano'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
   /* return Container(
      color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _radioValue = 1;
                  });
                },
                child: Radio(
                  value: 1,
                  groupValue: _radioValue,
                  onChanged: (value) {
                    setState(() {
                      _radioValue = value!;
                    });
                  },
                ),
              ),
              Radio(
                value: 2,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value!;
                  });
                },
              ),
              Text('Option 2'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 3,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value!;
                  });
                },
              ),
              Text('Option 1'),
              Radio(
                value: 4,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value!;
                  });
                },
              ),
              Text('Option 2'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 5,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value!;
                  });
                },
              ),
              Text('Option 1'),
              Radio(
                value: 6,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value!;
                  });
                },
              ),
              Text('Option 2'),
            ],
          )
        ],
      ),
    );*/

