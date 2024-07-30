import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/views/widgets/custom_inputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoSection extends StatelessWidget {
  final cont = Get.find<AuthCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInputField(
            controller: cont.signupNameCont,
            labelText: 'Full Name',
            keyboardType: TextInputType.text),
        CustomInputField(
            controller: cont.signupPhoneCont,
            labelText: 'Phone number',
            keyboardType: TextInputType.text),
        CustomInputField(
            controller: cont.signupCivilIDCont,
            labelText: 'Civil ID',
            keyboardType: TextInputType.text)
      ],
    );
  }
}
