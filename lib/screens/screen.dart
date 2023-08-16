import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  TextEditingController? passwordController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
          controller: passwordController,
          keyboardType: TextInputType.number,
          obscureText: true,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              hintText: "Password",
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(13)))),
    );
  }
}
