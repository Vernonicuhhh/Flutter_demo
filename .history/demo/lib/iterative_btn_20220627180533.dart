import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class iterativeBtn extends StatefulWidget {
  iterativeBtn({Key? key}) : super(key: key);

  @override
  State<iterativeBtn> createState() => _iterativeBtnState();
}

class _iterativeBtnState extends State<iterativeBtn> {
  int shots_attempted = 0;
  int shots_made = 0;
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      print('hi');
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
        home: Scaffold(
      body: Column(children: [
        Flexible(
            child: Container(
          margin: EdgeInsets.only(left: width / 2 - 150, top: height / 8 - 25),
          child: Text(
            'Scouting Team #',
            style: TextStyle(fontSize: 50),
          ),
        )),
        Flexible(
            child: Container(
                height: 50,
                width: 300,
                color: Colors.amber,
                margin: EdgeInsets.only(
                    left: width / 2 - 150, top: height / 8 - 25),
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
                              shots_attempted++;
                            });
                          },
                        )),
                        Flexible(child: Text('$shots_attempted')),
                        Flexible(
                            child: TextButton(
                                child: const Text('-'),
                                onPressed: () {
                                  setState(() {
                                    if (shots_attempted == 0) {
                                      shots_attempted = 0;
                                    } else {
                                      shots_attempted--;
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
                              shots_made++;
                            });
                          },
                        )),
                        Flexible(child: Text('$shots_made')),
                        Flexible(
                            child: TextButton(
                                child: const Text('-'),
                                onPressed: () {
                                  setState(() {
                                    if (shots_made == 0) {
                                      shots_made = 0;
                                    } else {
                                      shots_made--;
                                    }
                                  });
                                }))
                      ]))
                ]))),
        Expanded(
          child: Container(
            margin:
                EdgeInsets.only(left: width / 2 - 150, top: height / 8 - 25),
            width: 300,
            height: height / 11,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Climb Time',
              ),
            ),
          ),
        ),
        Container(
          width: 500,
          height: 100,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Leave A Comment',
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {},
              ),
            ),
          ),
        )
      ]),
    ));
  }
}
