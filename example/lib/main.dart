import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

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
                child: Column(
                  children: [
                    SimpleRadioFormField(
                      //initialValue: "manta",
                      options: [
                        OptionItem(label: "Manta", value: "manta"),
                        OptionItem(label: "Porta Travesseiro", value: "portaTravesseiro"),
                        OptionItem(label: "Almofadas", value: "almofadas"),
                        OptionItem(label: "Peseira", value: "peseira"),
                        OptionItem(label: "Capa de Almofadas", value: "capaAlmofada"),
                        OptionItem(label: "Jogo Americano", value: "jogoAmericano"),
                        OptionItem(label: "Toalha de Mesa", value: "toalhaMesa"),
                        OptionItem(label: "Forro de Sofá", value: "Forro Sofá"),
                        OptionItem(label: "Almofa redonda", value: "almofadaRedonda"),
                        OptionItem(label: "Toalha de Banho", value: "toalhaBanho"),
                      ],
                      validator: (value) {
                        print("VALIDATOR-->>$value");
                        if (value == null) {
                          return 'Por favor selecione um produto';
                        }
                        return null;
                      },
                      onChanged: (value) {
                          print("ONCHANGED-->>$value");
                      },
                      onSaved: (value) {
                        print("ONSAVED-->$value");
                      },
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                    }
                  },
                  child: const Text("Salvar"))
            ],
          ),
        ),
      ),
    );
  }
}
