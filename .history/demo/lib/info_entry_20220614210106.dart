
import 'package:demo/iterative_btn.dart';
import 'package:demo/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoEntry extends StatefulWidget {
  InfoEntry({Key? key}) : super(key: key);

  @override
  State<InfoEntry> createState() => _InfoEntry();
}

class _InfoEntry extends State<InfoEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text("Info Entry Demo")
      ),
    body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Expanded(
              child: iterativeBtn()
              ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 450),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Leave A Comment',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: (){},
                    ),
                ),
                ),
                )
            ),


          ],
        )
      )
      ),
    );
  }
}