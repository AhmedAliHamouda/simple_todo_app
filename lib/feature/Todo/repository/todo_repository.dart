import 'package:simple_todo_app/common/utilities/constants.dart';
import 'package:simple_todo_app/common/utilities/db_hepler.dart';
import 'package:simple_todo_app/feature/Todo/model/todos_model.dart';

class TodoRepository {

  static Future<TodosModel> getTodoList() async {
    try {
      final todoList = await DBHelper.getData(todoTableName);
      return TodosModel.fromJson({"todo_list": todoList});
    }catch(error){
      return TodosModel.fromJson({"todo_list": []});
    }
  }

  static Future<int> updateTodo(Todo todo) async {
    final response = await DBHelper.update(table:todoTableName,values: todo.toJson(),todoId: todo.id!);
    return response;
  }

  static Future<int> insertTodo(Todo todo) async {
    final response = await DBHelper.insert(table:todoTableName,data: todo.toJson());
    return response;
  }

}
