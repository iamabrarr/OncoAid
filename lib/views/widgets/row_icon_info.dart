import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

class RowIconInfo extends StatelessWidget {
  const RowIconInfo({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: ColorConstants.yellowColor,
        ),
        SizedBox(width: SizeConfig.widthMultiplier * 1),
        SizedBox(
          width: SizeConfig.widthMultiplier * 20,
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyleConstants.bodyTextSmall.copyWith(
                color: Colors.grey.shade600,
                fontSize: SizeConfig.textMultiplier * 1.5),
          ),
        ),
      ],
    );
  }
}
