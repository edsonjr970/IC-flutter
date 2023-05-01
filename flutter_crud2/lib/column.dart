import 'package:flutter/material.dart';

class Mycolumn extends StatelessWidget{
  const Mycolumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(children: [
                MeuQ(cor: Colors.blue),
                MeuQ(cor: Colors.blue),
                MeuQ(cor: Colors.blue),
              ]),
              Row(children: [
                MeuQ(cor: Colors.green),
                MeuQ(cor: Colors.green),
                MeuQ(cor: Colors.green),
              ]),             
            ],
          ),
       ),
    );
  } 
}
class MeuQ extends StatelessWidget{
  final Color cor;
  const MeuQ({Key? key, required this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100,
              height: 100,
              color: cor,
           )     
    );
  } 
}