import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/constants.dart';



class Loader extends StatelessWidget {
  final Color? color;
  const Loader({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: SpinKitRipple(
          color: color??kPrimaryColor,
          size: 70.0.w,
        ),
      ),
    );
  }
}

class PaginationLoader extends StatelessWidget {
  const PaginationLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
        child: SpinKitThreeBounce(
          color: kPrimaryColor,
          size: 22.0.w,
        ),
      ),
    );
  }
}

void _setLoading() {
  showDialog(context: navigatorKey.currentContext!, builder: (context) => const Loader(),barrierDismissible: false);
}


void showLoadingDialog() {
  _setLoading();
}

void closeLoadingDialog() {
  navigatorKey.currentState?.pop();
}