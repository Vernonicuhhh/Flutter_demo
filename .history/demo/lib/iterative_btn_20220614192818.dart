import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iterativeBtn extends StatefulWidget {
  iterativeBtn({Key? key}) : super(key: key);

  @override
  State<iterativeBtn> createState() => _iterativeBtnState();
}

class _iterativeBtnState extends State<iterativeBtn> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      home: Scaffold(
        
       body: Column(
          children:[
            Expanded(
        child: TextButton(
          child: Text('+'),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        )),
        Expanded(
        child: TextButton(
          child: Text('+'),
          onPressed: () {
            setState(() {
              count++;
            });}
      )
      )
      ]
    )));
  }
}