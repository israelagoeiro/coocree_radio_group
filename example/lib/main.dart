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
            LabelValueString("MantaX", "manta"),
            LabelValueString("Porta Travesseiro", "portaTravesseiro"),
            LabelValueString("Almofadas", "almofadas"),
            LabelValueString("Peseira", "peseira"),
            LabelValueString("Capa de Almofadas", "capaAlmofada"),
            LabelValueString("Jogo Americano", "jogoAmericano"),
            LabelValueString("Toalha de Mesa", "toalhaMesa"),
            LabelValueString("Forro de Sofá", "Forro Sofá"),
            LabelValueString("Almofa redonda", "almofadaRedonda"),
            LabelValueString("Toalha de Banho", "toalhaBanho"),
          ],

        ),
      ),
    );
  }
}
