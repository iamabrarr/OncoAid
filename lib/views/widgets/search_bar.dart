import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar(
      {super.key,
      this.isEnable = true,
      this.controller,
      required this.hintText});
  final TextEditingController? controller;
  final String hintText;
  final bool isEnable;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 6,
      width: SizeConfig.widthMultiplier * 90,
      margin: EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(16)),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier * 3,
      ),
      child: Row(
        children: [
          const Icon(
            FeatherIcons.search,
            size: 20,
          ),
          SizedBox(width: SizeConfig.widthMultiplier * 2),
          Expanded(
            child: TextField(
              enabled: isEnable,
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyleConstants.subtitle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
