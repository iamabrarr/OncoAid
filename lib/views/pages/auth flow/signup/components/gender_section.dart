import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderSection extends StatelessWidget {
  final cont = Get.find<AuthCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: SizeConfig.heightMultiplier * 4),
        ...List.generate(
            2,
            (index) => GestureDetector(
                  onTap: () => cont.selectedGenderIndex.value = index,
                  child: Obx(() => RadioListTile(
                      value: index,
                      activeColor: ColorConstants.primaryColor,
                      contentPadding: EdgeInsets.zero,
                      title: Text(index == 0 ? 'Male' : 'Female'),
                      groupValue: cont.selectedGenderIndex.value,
                      onChanged: (val) =>
                          cont.selectedGenderIndex.value = val ?? -1)),
                ))
      ],
    );
  }
}
