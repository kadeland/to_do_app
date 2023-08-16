import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  String data;
  bool isChecked;
  Function(bool?)? onChecked;

  RowScreen(this.data, this.isChecked, this.onChecked, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: isChecked, onChanged: onChecked),
        Text(data,
            style: TextStyle(
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none)),
      ],
    );
  }
}
