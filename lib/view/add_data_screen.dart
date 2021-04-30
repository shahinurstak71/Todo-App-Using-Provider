import 'package:checktest/controller/app_control.dart';
import 'package:checktest/models/data_models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  static const routeName = 'add_ data_screen';

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameText = TextEditingController();
    final TextEditingController _deptText = TextEditingController();

    void _addData() {
      if (_nameText.text.length <= 0 && _deptText.text.length <= 0) {
        return;
      }

      Todo newData = Todo(
        id: DateTime.now().toString(),
        name: _nameText.text,
        department: _deptText.text,
        dateTime: DateTime.now(),
      );

      Provider.of<AppControl>(context, listen: false).addData(newData);
      Navigator.of(context).pop();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('ADD SCREEN'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _nameText,
            decoration: InputDecoration(hintText: 'write name'),
          ),
          TextFormField(
            controller: _deptText,
            decoration: InputDecoration(hintText: 'write department'),
          ),
          ElevatedButton(
              onPressed: () {
                _addData();
              },
              child: Text("ADD Data"))
        ],
      ),
    );
  }
}
