import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:demo/bool_btn.dart';
import 'package:demo/iterative_btn.dart';
import 'package:demo/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class InfoEntry extends StatefulWidget {
  InfoEntry({Key? key}) : super(key: key);

  @override
  State<InfoEntry> createState() => _InfoEntry();
}

class _InfoEntry extends State<InfoEntry> {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('comments').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Info Entry Demo")),
      body: SafeArea(
          child: Container(
              //padding: EdgeInsets.all(12),
              child: Column(
        children: [
          Flexible(child: iterativeBtn()),
          Container(
            width: 500,
            height: 100,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Leave A Comment',
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ],
      ))),
    );
  }
}
