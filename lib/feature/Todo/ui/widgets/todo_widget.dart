import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/date_utilities.dart';
import 'package:simple_todo_app/common/utilities/extensions.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';
import 'package:simple_todo_app/common/widgets/base/texts.dart';
import 'package:simple_todo_app/feature/Todo/model/todos_model.dart';
import 'package:simple_todo_app/feature/Todo/viewModel/todo_riverpod.dart';

class TodoWidget extends StatelessWidget {
  final Todo todo;
  final TodoRiverPod todoRiv;
  const TodoWidget({Key? key, required this.todo, required this.todoRiv}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
       margin: EdgeInsets.only(bottom: 20.h),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(9.r))),
      child: InkWell(
        onTap: () async {
          todo.todoDone = !(todo.todoDone!);
          await todoRiv.updateTodo(todo);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: const Icon(Icons.circle, size: 10, color: kGreyColor),
              ),
              8.ESW(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      todo.todoName ?? '',
                      textStyle: kBoldStyle[kNormalSize]!
                          .copyWith(decoration: (todo.todoDone ?? false) ? TextDecoration.lineThrough : null),
                    ),
                    13.ESH(),
                    CustomText(
                      todo.todoInfo ?? '',
                      textStyle: kMediumStyle[kSmallSize]!.copyWith(
                          color: kGreyColor, decoration: (todo.todoDone ?? false) ? TextDecoration.lineThrough : null),
                    ),
                  ],
                ),
              ),
              8.ESW(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    DateUtilities.convertTimeToAmPm(todo.todoTime ?? ''),
                    textStyle: kMediumStyle[kSmallSize]!.copyWith(color: kGreyColor),
                  ),
                  Checkbox(
                    value: todo.todoDone,
                    onChanged: (val) async {
                      todo.todoDone = val;
                      await todoRiv.updateTodo(todo);
                    },
                    fillColor: MaterialStateProperty.resolveWith((Set states) {
                      return kBlackColor;
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
