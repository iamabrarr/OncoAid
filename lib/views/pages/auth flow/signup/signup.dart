import 'package:OncoAid/constants/padding.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/drawer/drawer.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/components/gender_section.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/components/email_pass_section.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/components/dob_section.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/components/upload_files_section.dart';
import 'package:OncoAid/views/pages/auth%20flow/signup/components/user_info_section.dart';
import 'package:OncoAid/views/widgets/custom_button.dart';
import 'package:OncoAid/views/widgets/custom_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends GetWidget<AuthCont> {
  SignupPage({super.key});
  List<Widget> sections = [
    EmailPassSection(),
    UserInfoSection(),
    DobSection(),
    GenderSection(),
    UploadFilesSection()
  ];
  List<String> sectionsName = [
    "Login Information",
    "Personal Information",
    "Date Of Birth",
    "Gender",
    "Necessary Files"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            InkWell(
                onTap: () => Get.back(), child: const Icon(Icons.arrow_back)),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Obx(
              () => Text(
                  "Your ${sectionsName[controller.currentSection.value]}",
                  style: TextStyleConstants.headingMedium),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            CustomProgressBar(),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            SizedBox(
              height: SizeConfig.heightMultiplier * 30,
              width: SizeConfig.widthMultiplier * 100,
              child: PageView.builder(
                  // physics: const NeverScrollableScrollPhysics(),
                  controller: controller.signupPageCont.value,
                  itemCount: sections.length,
                  onPageChanged: (val) => controller.currentSection.value = val,
                  allowImplicitScrolling: false,
                  itemBuilder: (_, i) =>
                      Obx(() => sections[controller.currentSection.value])),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            Obx(() => CustomButton(
                onTap: () => controller.currentSection.value == 4
                    ? Get.to(() => const MainDrawer())
                    : _onNext(),
                text: controller.currentSection.value == 4 ? 'Finish' : 'Next'))
          ],
        ),
      )),
    );
  }

  _onNext() {
    controller.signupPageCont.value!.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
  }
}
