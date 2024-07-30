import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/live%20groups/live_groups.dart';
import 'package:OncoAid/views/pages/p2p%20groups/p2p_groups.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SupportGroupPage extends StatelessWidget {
  const SupportGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Support Groups'),
      body: Column(
        children: [
          SizedBox(height: SizeConfig.heightMultiplier * 1),
          SupportGroupTile(
            icon: IconsConstants.live,
            title: 'Live Support Groups',
            subtitle: 'Patients and doctors online support groups',
            onTap: () => Get.to(() => const LiveGroupsPage()),
          ),
          SupportGroupTile(
            icon: IconsConstants.p2p,
            title: 'P2P Support Groups',
            subtitle:
                'Local peer to peer support groups and events which are held over Kuwait',
            onTap: () => Get.to(() => const P2PGroupsPage()),
          ),
        ],
      ),
    );
  }
}

class SupportGroupTile extends StatelessWidget {
  const SupportGroupTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String icon, title, subtitle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: SizeConfig.heightMultiplier * 12,
        width: SizeConfig.widthMultiplier * 90,
        margin: EdgeInsets.symmetric(
            vertical: SizeConfig.heightMultiplier * 1,
            horizontal: SizeConfig.widthMultiplier * 5),
        decoration: DecorationConstants.whiteContainer,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Row(
          children: [
            Image.asset(
              icon,
              height: SizeConfig.heightMultiplier * 8,
              width: SizeConfig.widthMultiplier * 18,
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyleConstants.buttonText),
                SizedBox(
                  width: SizeConfig.widthMultiplier * 55,
                  child: Text(subtitle, style: TextStyleConstants.subtitle),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
