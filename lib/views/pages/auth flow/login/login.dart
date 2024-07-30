import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/drawer/drawer.dart';
import 'package:OncoAid/views/pages/auth%20flow/forgot%20pass/forgot_pass.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/signup.dart';
import 'package:OncoAid/views/pages/home/home.dart';
import 'package:OncoAid/views/widgets/app_logo.dart';
import 'package:OncoAid/views/widgets/custom_button.dart';
import 'package:OncoAid/views/widgets/custom_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class LoginPage extends GetWidget<AuthCont> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppLogo(isSmall: true),
              Text(
                "Join us in the fight against cancer, Let's login",
                style: TextStyleConstants.subtitle,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 15),
              CustomInputField(
                  controller: controller.loginEmailCont,
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              CustomInputField(
                  controller: controller.loginPassCont,
                  labelText: 'Password',
                  isPassword: true,
                  keyboardType: TextInputType.emailAddress),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () => Get.to(() => const ForgotPassPage()),
                    child: const Text('Forgot password?')),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              CustomButton(
                  onTap: () => Get.to(() => const MainDrawer()), text: 'Login'),
              SizedBox(height: SizeConfig.heightMultiplier * 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.7,
                        color: Colors.grey.shade700),
                  ),
                  TextButton(
                      onPressed: () => Get.to(() => SignupPage()),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: SizeConfig.textMultiplier * 1.7,
                            color: ColorConstants.primaryColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
