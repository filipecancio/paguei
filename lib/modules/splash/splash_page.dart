import 'package:flutter/material.dart';
import 'package:paguei/shared/themes/app_colors.dart';
import 'package:paguei/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green05,
      body: Center(child: Image.asset(AppImages.logoFull)),
    );
  }
}
