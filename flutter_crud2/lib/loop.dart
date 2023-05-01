import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loop extends StatelessWidget{
  const loop ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        for (int x = 0; x <=2; x++){
          print(x);
          print("passei pelo loop");
          print("---");
        }
        print("não passei pelo loop");
      }, 
      child: Text('clique aqui'));
  }
}