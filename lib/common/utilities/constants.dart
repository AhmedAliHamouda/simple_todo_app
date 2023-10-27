import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/feature/Todo/model/todos_model.dart';

const String todoTableName = 'todos_data';

// navigator key
final navigatorKey = GlobalKey<NavigatorState>();

final messengerKey = GlobalKey<ScaffoldMessengerState>();

/// Default Buttons Dimensions
final double kDefaultButtonHeight = 36.0.h;
final double kDefaultButtonGapSize = 15.0.w;
final double kDefaultButtonRadius = 16.0.r;

final TodosModel dummyTodosModel = TodosModel(
  todoList: [
    Todo(
      id: 1,
      todoName: 'Test Todo 1',
      todoInfo: 'Test Info 1',
      todoTime: '17:20:00',
      todoDone: false,
    ),
    Todo(
      id: 2,
      todoName: 'Test Todo 2',
      todoInfo: 'Test Info 2',
      todoTime: '09:20:00',
      todoDone: true,
    ),
    Todo(
      id: 3,
      todoName: 'Test Todo 3',
      todoInfo: 'Test Info 3',
      todoTime: '19:20:00',
      todoDone: true,
    ),
    Todo(
      id: 4,
      todoName: 'Test Todo 4',
      todoInfo: 'Test Info 4',
      todoTime: '20:20:00',
      todoDone: false,
    ),
    Todo(
      id: 5,
      todoName: 'Test Todo 5',
      todoInfo: 'Test Info 5',
      todoTime: '17:20:00',
      todoDone: true,
    ),
    Todo(
      id: 6,
      todoName: 'Test Todo 6',
      todoInfo: 'Test Info 6',
      todoTime: '17:20:00',
      todoDone: false,
    ),
    Todo(
      id: 7,
      todoName: 'Test Todo 7',
      todoInfo: 'Test Info 7',
      todoTime: '17:20:00',
      todoDone: true,
    ),
    Todo(
      id: 8,
      todoName: 'Test Todo 8',
      todoInfo: 'Test Info 8',
      todoTime: '07:20:00',
      todoDone: true,
    ),
    Todo(
      id: 9,
      todoName: 'Test Todo 9',
      todoInfo: 'Test Info 9',
      todoTime: '04:20:00',
      todoDone: false,
    ),
  ],
);
