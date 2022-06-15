
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iterativeBtn extends StatefulWidget {
  iterativeBtn({Key? key}) : super(key: key);

  @override
  State<iterativeBtn> createState() => _iterativeBtnState();
}

class _iterativeBtnState extends State<iterativeBtn> {
  int count = 0;
//_iterativeBtnState(this.w,this.h)
 const _iterativeBtnState({
  Key key,
  this.width,this.height}): super(key:key));
  final int width;
  final int height;
 

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