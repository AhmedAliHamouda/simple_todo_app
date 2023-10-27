import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/commonRiverpods/global_riverpod_container.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/date_utilities.dart';
import 'package:simple_todo_app/common/utilities/extensions.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';
import 'package:simple_todo_app/common/widgets/Loading/loading_widget.dart';
import 'package:simple_todo_app/common/widgets/base/custom_button.dart';
import 'package:simple_todo_app/common/widgets/base/empty_widget.dart';
import 'package:simple_todo_app/common/widgets/base/texts.dart';
import 'package:simple_todo_app/feature/Todo/model/todos_model.dart';
import 'package:simple_todo_app/feature/Todo/ui/widgets/todo_widget.dart';
import 'package:simple_todo_app/feature/Todo/viewModel/todo_riverpod.dart';

import 'widgets/select_list_widget.dart';

class TodosScreen extends StatefulWidget {
  const TodosScreen({Key? key}) : super(key: key);

  @override
  State<TodosScreen> createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 0),
      () async {
        providerContainer.read(todoRiverPod).getTodoList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            final todoRiv = ref.watch(todoRiverPod);
            return todoRiv.loadingTodoList
                ? const Loader()
                : todoRiv.todosModel == null
                    ? const EmptyWidget(title: 'No Data Found')
                    : Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            10.ESH(),
                            CustomText(
                              'Today',
                              textStyle: kBoldStyle[kBiggerSize]!.copyWith(fontSize: 30.sp),
                            ),
                            2.ESH(),
                            CustomText(
                              DateUtilities.getFormattedDate(DateTime.now()),
                              textStyle: kMediumStyle[kNormalSize]!.copyWith(color: kGreyColor),
                            ),
                            20.ESH(),
                            CustomButton(onPressed: () {  }, title: 'Search',preBtnIcon: Icons.search,btnHeight: 35.h,),
                            20.ESH(),
                            const SelectList(),
                            20.ESH(),
                            Expanded(child: _TodoList(list: todoRiv.recoverTodoList, todo: todoRiv)),
                            20.ESH(),
                            CustomButton(onPressed: () {  }, title: 'Add New Task',preBtnIcon: Icons.add_circle_rounded,btnHeight: 50.h,buttonRadius: 50.r,),

                          ],
                        ),
                      );
          },
        ),
      ),
    );
  }
}

class _TodoList extends StatelessWidget {
  final List<Todo> list;
  final TodoRiverPod todo;
  const _TodoList({Key? key, required this.list, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return list.isEmpty
        ? const EmptyWidget(title: 'No Data Found')
        : ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return TodoWidget(
                todoRiv: todo,
                todo: list[index],
              );
            },
          );
  }
}



