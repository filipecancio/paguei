import 'package:flutter/material.dart';
import 'package:paguei/modules/login/login_page.dart';
import 'package:paguei/modules/splash/splash_page.dart';
import 'package:paguei/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paguei',
      theme: ThemeData(primaryColor: AppColors.green06),
      home: LoginPage(),
    );
  }
}
