import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});
  final cont = Get.find<AuthCont>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(text: 'Settings'),
        body: Column(
          children: [
            SettingsTile(settingsType: SettingsType.notifications),
            SettingsTile(settingsType: SettingsType.language),
          ],
        ));
  }
}

class SettingsTile extends StatelessWidget {
  SettingsTile({
    super.key,
    required this.settingsType,
  });

  final SettingsType settingsType;
  final cont = Get.find<AuthCont>();
  @override
  Widget build(BuildContext context) {
    int index = settingsType == SettingsType.notifications ? 2 : 6;
    return Container(
      height: SizeConfig.heightMultiplier * 9,
      width: SizeConfig.widthMultiplier * 90,
      decoration: DecorationConstants.whiteContainer,
      margin: EdgeInsets.symmetric(
          vertical: SizeConfig.heightMultiplier * 1,
          horizontal: SizeConfig.widthMultiplier * 5),
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3),
      child: Row(
        children: [
          Container(
            height: SizeConfig.heightMultiplier * 5,
            width: SizeConfig.widthMultiplier * 12,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConstants.randomColors[index].withOpacity(0.2)),
            child: Center(
              child: Icon(
                settingsType == SettingsType.notifications
                    ? FeatherIcons.bell
                    : Icons.language,
                color: ColorConstants.randomColors[index],
              ),
            ),
          ),
          SizedBox(width: SizeConfig.widthMultiplier * 3),
          Text(
              settingsType == SettingsType.notifications
                  ? 'Notifications'
                  : 'Language',
              style: TextStyleConstants.buttonText),
          const Spacer(),
          settingsType == SettingsType.notifications
              ? Obx(
                  () => Transform.scale(
                      scale: 0.7,
                      child: CupertinoSwitch(
                          value: cont.allowNotifications.value,
                          activeColor: ColorConstants.primaryColor,
                          onChanged: (val) =>
                              cont.allowNotifications.value = val)),
                )
              : Text(
                  'English',
                  style: TextStyleConstants.subtitle,
                )
        ],
      ),
    );
  }
}

enum SettingsType { notifications, language }
