import 'package:flutter/material.dart';

import 'modules/login/login_page.dart';
import 'shared/themes/app_colors.dart';

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
