import 'package:checktest/models/data_models.dart';
import 'package:flutter/widgets.dart';

class AppControl extends ChangeNotifier {
  List<Todo> _modelData = [
    Todo(
      id: '1',
      name: 'SHAHINUR',
      department: "COMPUTER SCIENCE AND ENGINEERING",
      dateTime: null,
    ),
  ];

  List<Todo> get modelTodos {
    return [..._modelData];
  }

  void addData(Todo newData) {
    _modelData.insert(0, newData);
    notifyListeners();
  }

  void deleteTodo(String todoId) {
    _modelData.removeWhere((element) => element.id == todoId);
    notifyListeners();
  }
}
