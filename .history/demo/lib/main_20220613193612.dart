import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text('Flutter is fun!')
      ),
      body: Container(
        child: const Text("hi"),
        margin:  const EdgeInsets.all(100),
        color: Colors.purple,
        height: 500,
        width: 500
      )
    ));
  }
}