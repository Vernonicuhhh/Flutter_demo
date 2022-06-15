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
          home: Container(
            child:  Column(children: [
        Flexible(
            child: Container(
                height: 50,
                width: 300,
                color: Colors.amber,
                margin: EdgeInsets.only(
                    left: width / 2 - 150, top: height /8  - 25),
                child: Column(children: [
                  Expanded(child: Text('shots attempted')),
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Flexible(
                            child: TextButton(
                          child: Text('+'),
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                        )),
                        Flexible(child: Text('$count')),
                        Flexible(
                            child: TextButton(
                                child: const Text('-'),
                                onPressed: () {
                                  setState(() {
                                    if (count == 0) {
                                      count = 0;
                                    } else {
                                      count--;
                                    }
                                  });
                                }))
                      ]))
                ]))),
        Flexible(
            child: Container(
                height: 50,
                width: 300,
                color: Colors.amber,
                margin: EdgeInsets.only(
                    left: width / 2 - 150, top: height / 8 - 25),
                child: Column(children: [
                  Expanded(child: Text('shots made')),
                  Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Flexible(
                            child: TextButton(
                          child: Text('+'),
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                        )),
                        Flexible(child: Text('$count')),
                        Flexible(
                            child: TextButton(
                                child: const Text('-'),
                                onPressed: () {
                                  setState(() {
                                    if (count == 0) {
                                      count = 0;
                                    } else {
                                      count--;
                                    }
                                  });
                                }))
                      ]))
                ]))),
             Flexible(
             child: Container(
                margin: EdgeInsets.only(
                    left: width / 2 - 150, top: height / 8 - 25),
                width: width/3,
                height: height/11,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Climb Time',
                  ),
                ),
                ),
                )]),
          )
      
    );
  }
}
