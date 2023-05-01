import 'package:flutter/material.dart';

class Mytext extends StatelessWidget{
  const Mytext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Center(
          child: Text(
            'Meu Texto',
             style: TextStyle(
               fontSize: 50,
               color: Colors.blue,
               fontWeight: FontWeight.bold,
               fontStyle: FontStyle.italic
             )
          )
        ),
    );
  } 
}