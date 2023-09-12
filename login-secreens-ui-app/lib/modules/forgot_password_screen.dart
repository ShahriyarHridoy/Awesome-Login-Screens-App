import 'package:egypt_store/modules/login_screen.dart';
import 'package:flutter/material.dart';

import '../shared/animation/fade_animation.dart';
import '../shared/components/componts/textFeild.dart';
import '../shared/network/remote/back_navigator.dart';
import '../shared/styles/colors.dart';

class ForgotPasswordScreen extends PageRouteBuilder {
  ForgotPasswordScreen()
      : super(transitionsBuilder: (context, animation, animationtwo, child) {
          return ScaleTransition(
            scale: Tween(
              begin: 0.0,
              end: 1.0,
            ).animate(CurvedAnimation(
                parent: animation, curve: Curves.fastLinearToSlowEaseIn)),
            child: child,
          );
        }, pageBuilder: (context, animation, animationtwo) {
          var emailController = TextEditingController();

          return Directionality(
            textDirection: TextDirection.ltr,
            child: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 150),
                  const FadeAnimation(
                    1.6,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ''
                          'Forgot your password ?',
                          style: TextStyle(
                              fontSize: 23.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  FadeAnimation(
                    2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ''
                          'Add your email to receive a message',
                          style: TextStyle(
                              color: darkGreyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  FadeAnimation(
                    2.4,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ''
                          'with new password',
                          style: TextStyle(
                              color: darkGreyColor,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 38.7,
                  ),
                  FadeAnimation(
                    2.8,
                    textFormFeild(
                      InputAction: TextInputAction.done,
                      obscureText: true,
                      type: TextInputType.visiblePassword,
                      controller: emailController,
                      labelText: ' E-mail ',
                      icon: Icons.email_rounded,
                      onTap: () {},
                      validator: 'Please enter your e-mail',
                    ),
                  ),
                  const SizedBox(
                    height: 60.7,
                  ),
                  FadeAnimation(
                      3.2,
                      buttom(
                          text: 'send',
                          colorBtn: secondaryColor,
                          onPressed: () {
                            BackNavigator(context, nextScreen: LoginScreen());
                          },
                          width: 350)),
                ],
              ),
            ),
          );
        });
}
