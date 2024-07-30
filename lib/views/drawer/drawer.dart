import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/home/home.dart';
import 'package:OncoAid/views/pages/notifications/notifications.dart';
import 'package:OncoAid/views/pages/profile/profile.dart';
import 'package:OncoAid/views/pages/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final ZoomDrawerController controller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller,
      menuBackgroundColor: ColorConstants.primaryColor,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 12)],
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.75,
      duration: const Duration(milliseconds: 500),
      angle: 0.0,
      mainScreen: const HomePage(),
      menuScreen: Theme(
        data: ThemeData.light(),
        child: const MenuPage(),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final authCont = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      body: Padding(
        padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 10,
            ),

            //PROFILE IMAGE
            Container(
              height: SizeConfig.heightMultiplier * 10,
              width: SizeConfig.widthMultiplier * 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(width: 3, color: ColorConstants.primaryColor),
                color: Colors.grey.shade200,
                image: DecorationImage(
                    image: NetworkImage(userPicture), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
                height: SizeConfig.heightMultiplier * 1), //Name of the user
            Text(
              "Lorem Ipsum",
              style: TextStyleConstants.headingMedium
                  .copyWith(color: Colors.white),
            ),

            Text(
              "lorem@gmail.com",
              style: TextStyleConstants.subtitle
                  .copyWith(color: Colors.grey.shade300),
            ),
            const Divider(color: Colors.grey),
            SizedBox(height: SizeConfig.heightMultiplier * 2),
            //DRAWER OPTIONS
            DrawerOptions(
              icon: FeatherIcons.user,
              text: "Profile",
              onTap: () => Get.to(() => const ProfilePage()),
            ),
            DrawerOptions(
              icon: FeatherIcons.bell,
              text: "Notifications",
              onTap: () => Get.to(() => NotificationsPage()),
            ),

            DrawerOptions(
              icon: FeatherIcons.settings,
              text: "Settings",
              onTap: () => Get.to(() => SettingsPage()),
            ),

            DrawerOptions(
              icon: FeatherIcons.info,
              text: "About us",
              onTap: () {
                // Get.to(() => const AboutUsPage(),
                //     transition: Transition.rightToLeft);
              },
            ),
            DrawerOptions(
              icon: FeatherIcons.file,
              text: "Terms and conditions",
              onTap: () {
                // Get.to(() => const TermsAndConditionsPage(),
                //     transition: Transition.leftToRight);
              },
            ),

            DrawerOptions(
              icon: FeatherIcons.logOut,
              text: "Logout",
              onTap: () {
                // controller.onSignOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerOptions extends StatelessWidget {
  const DrawerOptions({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 4),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(
              width: SizeConfig.widthMultiplier * 4,
            ),
            Text(
              text,
              style:
                  TextStyleConstants.buttonText.copyWith(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
