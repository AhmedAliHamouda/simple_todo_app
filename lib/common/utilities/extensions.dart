
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


extension ScreenSpaces on num {
  // ignore: non_constant_identifier_names
  SizedBox ESW() {
    return SizedBox(width: w,);
  }
  // ignore: non_constant_identifier_names
  SizedBox ESH() {
    return SizedBox(height: h,);
  }
}



