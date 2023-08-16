import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/classes/custom_list.dart';
import 'package:to_do_app/screens/row_screen.dart';
import 'package:to_do_app/util/dialog_box.dart';

class TodoListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TodoListState();
  }
}

class TodoListState extends State {
  final _controller = TextEditingController();
  List allData = [
    ["value", true],
    ["abc", false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("To do app")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialogBox(),
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: allData.length,
        itemBuilder: (BuildContext c, int index) {
          return RowScreen(allData[index][0], allData[index][1],
              (value) => changeValue(value, index));

          // print(allData[index]);
        },
      ),
    );
  }

  void showDialogBox() {
    showDialog(
        context: context,
        builder: (context) {
          // return AlertDialog(
          //           title: Text("hello world"), content: Text("do you accept"));

          return AlertDialog(
            content: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "New Task"),
            ),
            actions: [
              TextButton(
                onPressed: () => closeDialogue(),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => addData(_controller.text),
                child: const Text('Save'),
              ),
            ],
          );
        });
  }

  void changeValue(value, int index) {
    setState(() {
      allData[index][1] = value;
    });
  }

  void addData(data) {
    setState(() {
      allData.add([data, false]);
      // print(_controller.text);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void closeDialogue() {
    Navigator.of(context).pop();
  }
}
