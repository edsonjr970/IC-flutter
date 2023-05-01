import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class opAr extends StatelessWidget{
  const opAr ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      onPressed: (){
        print(5*(2-1));
      }, 
      child: Text('clique aqui'));
  }
}