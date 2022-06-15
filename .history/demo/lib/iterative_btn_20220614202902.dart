
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iterativeBtn extends StatefulWidget {
  iterativeBtn({Key? key}) : super(key: key);

  @override
  State<iterativeBtn> createState() => _iterativeBtnState();
}

class _iterativeBtnState extends State<iterativeBtn> {
  int count = 0;
  double w = 10.5;
  double h = 10.5;
factory(double width, double height){
  w = width;
  h = height;
}
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
      home: Scaffold(
      body: Container(
        height:50,
        width:300,
        color: Colors.amber,
        margin: const EdgeInsets.only(left:750,top: 450),
        
       child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Flexible(
        child: TextButton(
          child: Text('+'),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        )),
        Flexible(
          child: Text('$count')
        ),
        
        Flexible(
        child: TextButton(
          child: const Text('-'),
          onPressed: () {
            setState(() {
              if(count == 0 ){
                count = 0;
              }
              else {
                count--;
              }
            });}
      )
      )
      ]
    ))));
  }
}