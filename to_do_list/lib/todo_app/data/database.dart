import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this method if this is first time ever  opening this app
  void createInitialData() {
    toDoList = [
      ["Making tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
