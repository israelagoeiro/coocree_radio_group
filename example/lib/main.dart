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
        child: SimpleListColumn(children: [
          ItemNameValue("MantaX", "manta"),
          ItemNameValue("Porta Travesseiro", "portaTravesseiro"),
          ItemNameValue("Almofadas", "almofadas"),
          ItemNameValue("Peseira", "peseira"),
          ItemNameValue("Capa de Almofadas", "capaAlmofada"),
          ItemNameValue("Jogo Americano", "jogoAmericano"),
        ]),
      ),
    );
  }
}
