import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: Colors.black,
      leading: Padding(
        padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
        child: const BackButton(),
      ),
      centerTitle: true,
      title: Text(text, style: TextStyleConstants.headingNormal),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(SizeConfig.heightMultiplier * 7);
}
