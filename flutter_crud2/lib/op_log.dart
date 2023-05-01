import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class opLog extends StatelessWidget{
  const opLog ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        bool arroz = true;
        bool feijao = false;

        print(arroz || feijao);
        print(arroz && feijao);
        print(arroz != feijao);
      }, 
      child: Text('clique aqui'));
  }
}