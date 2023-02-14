# SimpleRadioFormField

O `SimpleRadioFormField` é um widget que permite exibir um grupo de radio buttons em uma grade simples. Este widget é especialmente útil quando se deseja limitar as opções selecionáveis e apresentá-las de forma organizada e fácil de usar.

## Como utilizar

Para utilizar o `SimpleRadioFormField`, é necessário importar o pacote `coocree_radio_group` e a classe `SimpleRadioFormField`. Em seguida, adicione o widget ao seu formulário, definindo as opções que serão exibidas e implementando as funções de validação, salvamento e alteração.

```dart
import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

Form(
  child: Column(
    children: [
      SimpleRadioFormField(
        options: [
          OptionItem(label: "Opção 1", value: "opcao1"),
          OptionItem(label: "Opção 2", value: "opcao2"),
          OptionItem(label: "Opção 3", value: "opcao3"),
        ],
        validator: (value) {
          if (value == null) {
            return 'Por favor selecione uma opção';
          }
          return null;
        },
        onChanged: (value) {
          print("A opção selecionada é: $value");
        },
        onSaved: (value) {
          print("A opção selecionada foi salva: $value");
        },
      ),
    ],
  ),
);

```

Parâmetros

* `options`: Lista de opções a serem exibidas.
* `minWidth`: Largura mínima do item do radio button.
* `maxWidth`: Largura máxima do item do radio button.
* `errorText`: Texto de erro a ser exibido.
* `onChanged`: Função chamada quando um item do radio button é alterado.
* `onSaved`: Função chamada quando o formulário é salvo.
* `validator`: Função chamada para validar o valor do campo.

## Exemplo completo

Confira o exemplo completo de como utilizar o `SimpleRadioFormField` em um formulário Flutter.

```dart
import 'package:coocree_radio_group/package.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleRadioFormField Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                      options: [
                        OptionItem(label: "Opção 1", value: "opcao1"),
                        OptionItem(label: "Opção 2", value: "opcao2"),
                        OptionItem(label: "Opção 3", value: "opcao3"),
                      ],
                      validator: (value) {
                        if (value == null) {
                          return 'Por favor selecione uma opção';
                        }
                   
                  },
                  onChanged: (value) {
                    print("A opção selecionada é: $value");
                  },
                  onSaved: (value) {
                    print("A opção selecionada foi salva: $value");
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
            child: const Text("Salvar"),
          ),
        ],
      ),
    ),
  ),
);

```

Neste exemplo, foi definido um formulário com apenas um campo `SimpleRadioFormField`, com três opções
exibidas em uma grade simples. A função `validator` verifica se uma opção foi
selecionada e a função `onChanged` é chamada toda vez que uma opção é selecionada.
A função `onSaved` é chamada quando o formulário é salvo.
