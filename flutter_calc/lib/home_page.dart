import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Calculadora IC'), backgroundColor: Colors.black, 
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textoDisplay,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 100
                  ),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCal(cor: Colors.grey, texto: '7'),
              buttonCal(cor: Colors.grey, texto: '8'),
              buttonCal(cor: Colors.grey, texto: '9'),
              buttonCal(cor: Colors.blue, texto: '+'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCal(cor: Colors.grey, texto: '4'),
              buttonCal(cor: Colors.grey, texto: '5'),
              buttonCal(cor: Colors.grey, texto: '6'),
              buttonCal(cor: Colors.blue, texto: '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCal(cor: Colors.grey, texto: '1'),
              buttonCal(cor: Colors.grey, texto: '2'),
              buttonCal(cor: Colors.grey, texto: '3'),
              buttonCal(cor: Colors.blue, texto: 'x'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonCal(cor: Colors.grey, texto: '0'),
              buttonCal(cor: Colors.grey, texto: 'AC'),
              buttonCal(cor: Colors.grey, texto: '='),
              buttonCal(cor: Colors.blue, texto: '/'),
            ],
          ),
        ]),     
    );
  }
  Widget buttonCal({required Color cor, required String texto}){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {calcular(texto);},
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(100, 100),
          shape: CircleBorder(),
          primary: cor
        ), 
        child: Text(
          texto,
          style: const TextStyle(fontSize: 50),
        )
      )
    );
  }
  String textoDisplay = '0';
  String resultado = '0';
  int numeroUm = 0;
  int numeroDois = 0;
  String operacao = '';
  bool novoNumero = false;

  void calcular(String texto) {
    if (texto == 'AC') {
      resultado = '0';
      numeroUm = 0;
      numeroDois = 0;
      novoNumero = false;
      operacao = '';
    } else if (texto == '+' ||
        texto == '-' ||
        texto == 'x' ||
        texto == '/' ||
        texto == '=') {
      novoNumero = true;
      if (texto != '=') {
        operacao = texto;
      }
      if (numeroUm == 0) {
        numeroUm = int.parse(textoDisplay);
      } else {
        if (numeroDois == 0) {
          numeroDois = int.parse(textoDisplay);
        }
        if (operacao == '+') {
          resultado = (numeroUm + numeroDois).toString();
        } else if (operacao == '-') {
          resultado = (numeroUm - numeroDois).toString();
        } else if (operacao == '/') {
          resultado = (numeroUm / numeroDois).toString();
        } else if (operacao == 'x') {
          resultado = (numeroUm * numeroDois).toString();
        }

        if (int.parse(resultado) > 0) {
          numeroDois = int.parse(resultado);
          numeroUm = 0;
        }
      }
    } else {
      if (novoNumero) {
        resultado = texto;
        novoNumero = false;
        numeroDois = 0;
      } else {
        if (resultado == '0') {
          resultado = texto;
        } else {
          resultado = textoDisplay + texto;
        }
      }
    }

    setState(() {
      textoDisplay = resultado;
    });
  }  
}
