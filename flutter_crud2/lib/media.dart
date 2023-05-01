import 'package:flutter/material.dart';
import 'package:prompt_dialog/prompt_dialog.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotaMedia extends StatefulWidget{
  const NotaMedia({Key? key}) : super(key: key);

  @override
  State<NotaMedia> createState() => _NotaMediaState();
}

class _NotaMediaState extends State<NotaMedia> {
  String nome = '';
  String frase = '';
  String nota1Texto = '';
  String nota2Texto  = '';
  String nota3Texto  = '';
  double nota1 = 0.00;
  double nota2 = 0.00;
  double nota3 = 0.00;
  double media = 0.00;
  static const int quantidadedeNotas = 3;

  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async{
            nome = await prompt(context, title: const Text("Digite o nome"))??
            'não identificado';

            nota1Texto = await prompt(context, title: const Text("Digite a nota1"))??
            '0.00';

            nota2Texto = await prompt(context, title: const Text("Digite a nota2"))??
            '0.00';

            nota3Texto = await prompt(context, title: const Text("Digite a nota3"))??
            '0.00';
            
            nota1 = double.parse(nota1Texto);
            nota2 = double.parse(nota2Texto);
            nota3 = double.parse(nota3Texto);
            media = (nota1+nota2+nota3)/quantidadedeNotas;
            setState(() {
              frase = "O Alun@ $nome, ficou com a média: ${media}";
            });
          }, 
          child: Text('Inserir notas')
        ),
        Text(frase)
      ],
    );
  }
}