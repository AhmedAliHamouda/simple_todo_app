import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_todo_app/common/utilities/colors.dart';
import 'package:simple_todo_app/common/utilities/constants.dart';
import 'package:simple_todo_app/splash.dart';

import 'common/commonRiverpods/global_riverpod_container.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Restrict orientation for Android devices
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(UncontrolledProviderScope(container: providerContainer, child: const MyMaterial()));
}




class MyMaterial extends StatelessWidget {
  const MyMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
       designSize: const Size(360, 800),
       minTextAdapt: true,
       splitScreenMode: true,
       useInheritedMediaQuery: true,
       child: MaterialApp(
          scaffoldMessengerKey: messengerKey,
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kWhiteColor,
          ),
          home: const Splash()),
     );
  }
}

