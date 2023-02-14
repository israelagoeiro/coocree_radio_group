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
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: SimpleListColumn(
                  children: [
                    LabelValue(label: "Manta", value: "manta"),
                    LabelValue(label: "Porta Travesseiro", value: "portaTravesseiro"),
                    LabelValue(label: "Almofadas", value: "almofadas"),
                    LabelValue(label: "Peseira", value: "peseira"),
                    LabelValue(label: "Capa de Almofadas", value: "capaAlmofada"),
                    LabelValue(label: "Jogo Americano", value: "jogoAmericano"),
                    LabelValue(label: "Toalha de Mesa", value: "toalhaMesa"),
                    LabelValue(label: "Forro de Sofá", value: "Forro Sofá"),
                    LabelValue(label: "Almofa redonda", value: "almofadaRedonda"),
                    LabelValue(label: "Toalha de Banho", value: "toalhaBanho"),
                  ],
                ),
              ),
              TextButton(onPressed: (){
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  print("XXXXXXXXXXXXXXXXXXXXXXX");
                }
              }, child: Text("Salvar"))
            ],
          ),
        ),
      ),
    );
  }
}
