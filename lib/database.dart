import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the box
  final _myBox = Hive.box('mybox');

  // when user is opening the app very first time
  void createInitialData() {
    toDoList = [
      ["heyy", false],
      ["hlw", false],
    ];
  }
  //load the data from the database
  void loadData() {
        toDoList = _myBox.get("TODOLIST");
  }
  // update the data
  void updateDatabase() {
  _myBox.put("TODOLIST", toDoList);
  }
}
