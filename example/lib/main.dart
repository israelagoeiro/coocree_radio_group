import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

//teste2
void main() {
  runApp(const Example());
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SimpleListColumn(
          children: [
            LabelValueString(label: "MantaX", value: "manta"),
            LabelValueString(label: "Porta Travesseiro", value: "portaTravesseiro"),
            LabelValueString(label: "Almofadas", value: "almofadas"),
            LabelValueString(label: "Peseira", value: "peseira"),
            LabelValueString(label: "Capa de Almofadas", value: "capaAlmofada"),
            LabelValueString(label: "Jogo Americano", value: "jogoAmericano"),
            LabelValueString(label: "Toalha de Mesa", value: "toalhaMesa"),
            LabelValueString(label: "Forro de Sofá", value: "Forro Sofá"),
            LabelValueString(label: "Almofa redonda", value: "almofadaRedonda"),
            LabelValueString(label: "Toalha de Banho", value: "toalhaBanho"),
          ],
        ),
      ),
    );
  }
}
