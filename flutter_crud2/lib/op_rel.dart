import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class opRel extends StatelessWidget{
  const opRel ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        int a = 3;
        int b = 3;
        print(a == 3);
        print(a > 3);
        print(a < 3);
      }, 
      child: Text('clique aqui'));
  }
}