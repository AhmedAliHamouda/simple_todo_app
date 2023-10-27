class TodosModel {
  List<Todo>? todoList;

  TodosModel({this.todoList});

  TodosModel.fromJson(Map<String, dynamic> json) {
    if (json['todo_list'] != null) {
      todoList = <Todo>[];
      json['todo_list'].forEach((v) {
        todoList!.add(Todo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (todoList != null) {
      data['todo_list'] = todoList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Todo {
  int? id;
  String? todoName;
  String? todoInfo;
  String? todoTime;
  bool? todoDone;
  int? todoDondeSearch;

  Todo(
      {this.id, this.todoName, this.todoInfo, this.todoTime, this.todoDone});

  Todo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    todoName = json['todoName'];
    todoInfo = json['todoInfo'];
    todoTime = json['todoTime'];
    todoDone = json['todoDone']==0?false:true;
    todoDondeSearch = json['todoDone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['todoName'] = todoName;
    data['todoInfo'] = todoInfo;
    data['todoTime'] = todoTime;
    data['todoDone'] = (todoDone??false)?1:0;
    //data['todoDone'] = todoDondeSearch;
    return data;
  }
}
