import 'package:flutter/material.dart';
import 'package:simple_todo_app/common/utilities/routes.dart';
import 'package:simple_todo_app/common/utilities/theme.dart';
import 'package:simple_todo_app/common/widgets/base/texts.dart';
import 'package:simple_todo_app/feature/Todo/ui/todos_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        _loadNextScreen();
      },
    );
  }

  void _loadNextScreen() async {
    CustomNavigator.pushScreenReplacementAll(widget: const TodosScreen(), context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:  Center(
          child: CustomText('TODO APP ',textStyle: kBoldStyle[kBigSize],),
        ),
      ),
    );
  }
}
