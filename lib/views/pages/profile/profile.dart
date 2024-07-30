import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'My Profile'),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.heightMultiplier * 5),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: SizeConfig.widthMultiplier * 10,
                  backgroundImage: NetworkImage(userPicture),
                  backgroundColor: ColorConstants.darkBlueColor,
                ),
                const Icon(FeatherIcons.camera, color: Colors.white)
              ],
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 1),
            Text(
              'Lorem Ipsum',
              style: TextStyleConstants.headingNormal,
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.heightMultiplier * 0.5,
                    horizontal: SizeConfig.widthMultiplier * 5),
                child: Text('Edit Name',
                    style: TextStyleConstants.subtitle
                        .copyWith(color: ColorConstants.darkBlueColor)),
              ),
            ),
            SizedBox(height: SizeConfig.heightMultiplier * 4),
            ProfileOption(
              icon: FeatherIcons.user,
              title: 'Personal Information',
              onTap: () {},
            ),
            const Divider(),
            ProfileOption(
              icon: FeatherIcons.lock,
              title: 'Request Password Reset',
              onTap: () {},
            ),
            const Divider(),
            ProfileOption(
              icon: FeatherIcons.settings,
              title: 'Settings',
              onTap: () {},
            ),
            const Divider(),
            ProfileOption(
              icon: FeatherIcons.file,
              title: 'Attachments',
              onTap: () {},
            ),
            const Divider(),
            ProfileOption(
              icon: FeatherIcons.shield,
              title: 'Privacy Policy',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: SizeConfig.heightMultiplier * 7,
        width: SizeConfig.widthMultiplier * 100,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Row(
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 4,
                width: SizeConfig.widthMultiplier * 9,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12)),
                child: Icon(
                  icon,
                  size: 20,
                ),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 5),
              Text(title, style: TextStyleConstants.bodyTextSmall)
            ],
          ),
        ),
      ),
    );
  }
}
