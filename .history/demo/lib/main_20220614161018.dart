import 'package:demo/iterative_btn.dart';
import 'package:demo/navbar.dart';
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
        //new navbar(),
        //new iterativeBtn()
      ),
    );
  }
}
