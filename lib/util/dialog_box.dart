import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  TextEditingController controller;
  Function onSave;
  Function onCancel;

  DialogBox(this.controller, this.onSave, this.onCancel, {super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: TextField(
        controller: controller,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), hintText: "New Task"),
      ),
      actions: [
        TextButton(
          onPressed: () => onCancel,
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => onSave,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
