import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prompt_dialog/prompt_dialog.dart';

class HelloWorld extends StatefulWidget {
  const HelloWorld({super.key});

  @override
  State<HelloWorld> createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
  String nome = '';
  String frase = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton( 
          child: const Text('Qual é o seu nome?'),
          onPressed: () async {
            nome = await prompt(context) ?? 'Não identificado';
            setState(() {
              frase = 'Hello $nome'; 
            });
          },
        ),
        Text(frase)
      ],
    );
  }
}