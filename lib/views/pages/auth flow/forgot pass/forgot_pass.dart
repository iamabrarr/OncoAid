import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/drawer/drawer.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/signup.dart';
import 'package:OncoAid/views/pages/home/home.dart';
import 'package:OncoAid/views/widgets/app_logo.dart';
import 'package:OncoAid/views/widgets/custom_button.dart';
import 'package:OncoAid/views/widgets/custom_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

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
                "Let's remember your password. Enter your email from which you created the account.",
                style: TextStyleConstants.subtitle,
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 15),
              CustomInputField(
                  controller: TextEditingController(),
                  labelText: 'Email',
                  keyboardType: TextInputType.emailAddress),
              SizedBox(height: SizeConfig.heightMultiplier * 5),
              CustomButton(
                  onTap: () => Get.to(() => const MainDrawer()),
                  text: 'Send Reset Link'),
              SizedBox(height: SizeConfig.heightMultiplier * 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Know your password?",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.7,
                        color: Colors.grey.shade700),
                  ),
                  TextButton(
                      onPressed: () => Get.back(),
                      child: Text(
                        'Login',
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
