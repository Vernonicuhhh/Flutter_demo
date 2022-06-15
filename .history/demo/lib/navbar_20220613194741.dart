import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class navbar extends StatefulWidget {
  navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.blue,
      title: const Text('Flutter is fun!')
      )
    
    ));
  }
}
