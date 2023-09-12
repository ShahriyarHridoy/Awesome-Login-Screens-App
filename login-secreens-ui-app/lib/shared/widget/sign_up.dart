import 'package:egypt_store/modules/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../animation/fade_animation.dart';
import '../components/componts/textFeild.dart';
import '../network/remote/final_navigator.dart';
import '../styles/colors.dart';

Future signUp(context) {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var repasswordController = TextEditingController();
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.circular(30),
            ),
            height: MediaQuery.of(context).size.height - 70,
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 80,
                  height: 3,
                  decoration: BoxDecoration(
                    color: darkGreyColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  1.6,
                  Image.asset(
                    'images/system-outline-8-account.gif',
                    height: 150,
                    width: 150,
                    color: basicColor,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                FadeAnimation(
                  2.2,
                  Text(
                    'Login ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  2.6,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: false,
                    type: TextInputType.visiblePassword,
                    controller: emailController,
                    labelText: ' E-mail ',
                    icon: Icons.email,
                    onTap: () {},
                    validator: 'Please enter your e-mail',
                  ),
                ),
                FadeAnimation(
                  3.2,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: false,
                    type: TextInputType.visiblePassword,
                    controller: phoneController,
                    labelText: 'Phone number',
                    icon: Icons.phone,
                    onTap: () {},
                    validator: 'Please enter phone number',
                  ),
                ),
                FadeAnimation(
                  3.8,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: true,
                    type: TextInputType.visiblePassword,
                    controller: passwordController,
                    labelText: ' Password ',
                    icon: Icons.password_outlined,
                    onTap: () {},
                    validator: 'Please enter your password',
                  ),
                ),
                FadeAnimation(
                  4.2,
                  textFormFeild(
                    InputAction: TextInputAction.done,
                    obscureText: true,
                    type: TextInputType.visiblePassword,
                    controller: repasswordController,
                    labelText: ' Re-enter Password ',
                    icon: Icons.password,
                    onTap: () {},
                    validator: 'Please password for confirmation',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                FadeAnimation(
                  4.6,
                  buttom(
                    text: 'registration',
                    colorBtn: secondaryColor,
                    onPressed: () {},
                    width: 350,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                FadeAnimation(
                  5,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'do you have an account ? ',
                        style: TextStyle(
                          color: basicColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          PushAndRemove(context,
                              nextScreen: const LoginScreen());
                        },
                        child: const Text(
                          'Login ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
