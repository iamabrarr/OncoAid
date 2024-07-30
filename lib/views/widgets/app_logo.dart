import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.isSmall,
  });
  final bool isSmall;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          isSmall ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          IconsConstants.appIcon,
          height: isSmall
              ? SizeConfig.heightMultiplier * 12
              : SizeConfig.heightMultiplier * 20,
        ),
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: 'Onco',
              style: isSmall
                  ? TextStyleConstants.headingMedium
                  : TextStyleConstants.headingLarge),
          TextSpan(
              text: 'Aid',
              style: isSmall
                  ? TextStyleConstants.headingMedium
                      .copyWith(color: ColorConstants.primaryColor)
                  : TextStyleConstants.headingLarge
                      .copyWith(color: ColorConstants.primaryColor))
        ])),
      ],
    );
  }
}
