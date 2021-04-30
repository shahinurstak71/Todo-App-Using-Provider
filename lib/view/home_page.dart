import 'package:checktest/controller/app_control.dart';
import 'package:checktest/view/add_data_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controlApp = Provider.of<AppControl>(context).modelTodos;
    void _deleteTodo(id) {
      Provider.of<AppControl>(context, listen: false).deleteTodo(id);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).pushNamed(AddScreen.routeName);
              })
        ],
      ),
      body: ListView.builder(
          itemCount: controlApp.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('${i + 1}'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(controlApp[i].name),
                          Text(controlApp[i].department)
                        ],
                      ),
                      IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            _deleteTodo(controlApp[i].id);
                          })
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
