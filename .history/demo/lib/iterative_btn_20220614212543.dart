
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
      body: Container(
        height:50,
        width:300,
        color: Colors.amber,
        margin: EdgeInsets.only(left:width/2-150,top: height/4),
        
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