
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
        double width = MediaQuery.of(context).size.width;
        double height = MediaQuery.of(context).size.height;
        return MaterialApp(
      home: Scaffold(
        body: Column(

        )
   ));
  }
}