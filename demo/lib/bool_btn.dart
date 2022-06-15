import 'package:flutter/cupertino.dart';
import 'package:toggle_switch/toggle_switch.dart';

class bool_btn extends StatefulWidget {
  bool_btn({Key? key}) : super(key: key);

  @override
  State<bool_btn> createState() => _bool_btn();
}

class _bool_btn extends State<bool_btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
      child: Row(
        children: [
          Text('Are You Married?'),
          SizedBox(
            width: 20,
          ),
          ToggleSwitch(
            initialLabelIndex: 0,
            totalSwitches: 2,
            labels: [
              'Yes',
              'No',
            ],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ],
      ),
    ),
    );
  }
}