import 'package:flutter/material.dart';
import 'package:paguei/modules/login/login_controller.dart';
import 'package:paguei/shared/themes/app_colors.dart';
import 'package:paguei/shared/themes/app_images.dart';
import 'package:paguei/shared/themes/app_text_styles.dart';
import 'package:paguei/shared/widgets/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.green05,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.4,
                color: AppColors.green08,
              ),
              Positioned(
                  top: size.height * 0.20,
                  left: (size.width / 2) - 100,
                  child: Image.asset(
                    AppImages.logoBig,
                    width: 200,
                  )),
              Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 65, right: 60, bottom: 60),
                          child: Text(
                            "Chega de fila, Page seus boletos aqui mesmo!",
                            textAlign: TextAlign.center,
                            style: TextStyles.titleHome,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: SocialLoginButton(
                          onTap: controller.googleSignIn,
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
