import 'package:flutter/material.dart';
import 'package:paguei/shared/themes/app_colors.dart';
import 'package:paguei/shared/themes/app_images.dart';
import 'package:paguei/shared/themes/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialLoginButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
            color: AppColors.gray01,
            borderRadius: BorderRadius.circular(5),
            border: Border.fromBorderSide(BorderSide(color: AppColors.gray03))),
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset(AppImages.google)),
            Expanded(
                flex: 4,
                child: Center(
                    child: Text(
                  "Entrar com Google",
                  style: TextStyles.buttonGray,
                )))
          ],
        ),
      ),
    );
  }
}
