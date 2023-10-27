import 'package:flutter/material.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/extensions.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';
import 'package:simple_todo_app/common/widgets/base/texts.dart';



class EmptyWidget extends StatelessWidget {
  final String? image;
  final String? title;
  const EmptyWidget({
    Key? key,  this.image,  this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          16.ESH(),
          if(title!=null)  CustomText(
            title!,
            textStyle: kBoldStyle[kBigSize]!.copyWith(
              color: kBlackTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
