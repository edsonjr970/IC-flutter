import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget{
  const Mybutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.black,
            ),
            onPressed: () {
              print('Hello');
            }, 
            child: Text('Botão 1'))
        ),
    );
  } 
}