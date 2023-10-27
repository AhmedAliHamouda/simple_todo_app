import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/commonRiverpods/global_riverpod_container.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/extensions.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';
import 'package:simple_todo_app/common/widgets/base/texts.dart';
import 'package:simple_todo_app/feature/Todo/viewModel/todo_riverpod.dart';

class SelectList extends StatefulWidget {
  const SelectList({Key? key}) : super(key: key);

  @override
  State<SelectList> createState() => _SelectListState();
}

class _SelectListState extends State<SelectList> {
  final List<String> _selectListData = ['All', 'Done', 'Undone'];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: _selectListData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              _selectedIndex = index;
              providerContainer.read(todoRiverPod).getTodoListWithFilter(index);
              setState(() {});
            },
            child: Stack(
              children: [
                if(index==2)
                 Positioned(
                  top: 8,
                  right: 30,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: kRedAccentColor,
                    child: CustomText('${providerContainer.read(todoRiverPod).recoverTodoList.length}',textStyle: kMediumStyle[kSmallerSize]!.copyWith(fontSize: 10.sp,color: kWhiteColor),),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 7.h),
                  decoration: BoxDecoration(
                    color: _selectedIndex == index ? kPrimaryColor.withOpacity(0.1) : kWhiteColor,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: CustomText(
                    _selectListData[index],
                    textStyle: kBoldStyle[kBigSize]!.copyWith(
                      color: _selectedIndex == index ? kPrimaryColor : kBlackColor,
                      fontSize: _selectedIndex == index ? 16 : kBigSize,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
