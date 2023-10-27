import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:simple_todo_app/common/utilities/constants.dart';
import 'package:simple_todo_app/common/widgets/Loading/loading_widget.dart';
import 'package:simple_todo_app/feature/Todo/model/todos_model.dart';
import 'package:simple_todo_app/feature/Todo/repository/todo_repository.dart';

final todoRiverPod = ChangeNotifierProvider<TodoRiverPod>((ref) => TodoRiverPod());

class TodoRiverPod extends ChangeNotifier {
  // loading todos list
  bool _loadingTodoList = false;

  bool get loadingTodoList => _loadingTodoList;

  set loadingTodoList(bool val) {
    _loadingTodoList = val;
    notifyListeners();
  }

  TodosModel? _todosModel;
  TodosModel? get todosModel => _todosModel;

  List<Todo> _recoverTodoList = [];
  List<Todo> get recoverTodoList => _recoverTodoList;


  Future<void> _initDataBase() async {
    for (Todo todo in dummyTodosModel.todoList!) {
      await TodoRepository.insertTodo(todo);
    }
    _todosModel = dummyTodosModel;
  }

  Future<void> getTodoList() async {
    loadingTodoList = true;
    final response = await TodoRepository.getTodoList();
    if (response.todoList!.isEmpty) {
      await _initDataBase();
    } else {
      _todosModel = response;
    }
    _recoverTodoList = List.from(todosModel?.todoList ?? []);
    loadingTodoList = false;
  }

  void getTodoListWithFilter(int index) {
    if (index == 0) {
      _recoverTodoList = _todosModel!.todoList!;
    } else if (index == 1) {
      _recoverTodoList = _todosModel!.todoList!.where((element) => element.todoDone == true).toList();
    } else if (index == 2) {
      _recoverTodoList = _todosModel!.todoList!.where((element) => element.todoDone == false).toList();
    }
    notifyListeners();
  }

  Future<void> insertTodo(Todo todo) async {
    showLoadingDialog();
    final response = await TodoRepository.insertTodo(todo);
    notifyListeners();
    closeLoadingDialog();
  }

  Future<void> updateTodo(Todo todo) async {
    showLoadingDialog();
    final response = await TodoRepository.updateTodo(todo);
    notifyListeners();
    closeLoadingDialog();
  }
}
