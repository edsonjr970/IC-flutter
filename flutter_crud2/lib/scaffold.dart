import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myscaffold extends StatelessWidget{
  const Myscaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu primeiro App')),
        body: Center(child: Text('oi, tudo bem?')),
        drawer: Drawer(backgroundColor: Colors.black,),
        floatingActionButton: FloatingActionButton(
          onPressed: () {}, 
          child: Text('+'),
        ),
    );
  } 
}