import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailPassSection extends StatelessWidget {
  final cont = Get.find<AuthCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
            controller: cont.signUpEmailCont,
            labelText: 'Email',
            keyboardType: TextInputType.emailAddress),
        CustomInputField(
            controller: cont.signUpPassCont,
            labelText: 'Password',
            isPassword: true,
            keyboardType: TextInputType.emailAddress),
        CustomInputField(
            controller: cont.signupRePassCont,
            labelText: 'Confirm Password',
            isPassword: true,
            keyboardType: TextInputType.emailAddress),
      ],
    );
  }
}
