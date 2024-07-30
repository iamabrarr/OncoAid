import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class AppointmentTile extends StatelessWidget {
  const AppointmentTile({
    super.key,
    this.isScheduleTile = false,
  });
  final bool isScheduleTile;
  @override
  Widget build(BuildContext context) {
    Color textColor =
        isScheduleTile ? ColorConstants.darkBlueColor : Colors.white;
    return Container(
      width: SizeConfig.widthMultiplier * 90,
      decoration: BoxDecoration(
          boxShadow: !isScheduleTile
              ? null
              : [
                  BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 15,
                      spreadRadius: 1)
                ],
          color: isScheduleTile ? Colors.white : ColorConstants.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      margin: !isScheduleTile
          ? null
          : EdgeInsets.only(top: SizeConfig.heightMultiplier * 2),
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.widthMultiplier * 3,
          vertical: SizeConfig.heightMultiplier * 1.5),
      child: Column(
        children: [
          Row(
            children: [
              //DOCTOR PICTURE
              CircleAvatar(
                radius: SizeConfig.widthMultiplier * 7,
                backgroundColor: textColor.withOpacity(0.2),
                backgroundImage: NetworkImage(doctorPicture),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //DOCTOR NAME
                  Text(
                    'Joshua Simorangkir',
                    style: TextStyleConstants.buttonText
                        .copyWith(color: textColor),
                  ),
                  //DOCTOR TYPE
                  Text(
                    'Dental Specialist',
                    style: TextStyleConstants.subtitle.copyWith(
                        color: isScheduleTile
                            ? Colors.grey.shade600
                            : Colors.grey.shade200),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          //APPOINTMENT TIME
          Container(
            height: SizeConfig.heightMultiplier * 7,
            width: SizeConfig.widthMultiplier * 90,
            decoration: BoxDecoration(
                color: isScheduleTile
                    ? Colors.grey.shade100
                    : textColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 4),
            child: Row(
              children: [
                Icon(FeatherIcons.calendar,
                    color: isScheduleTile ? Colors.grey : Colors.white,
                    size: 18),
                SizedBox(width: SizeConfig.widthMultiplier * 2),
                Text(
                  'Monday, July 25',
                  style: TextStyleConstants.bodyTextSmall
                      .copyWith(color: textColor),
                ),
                const Spacer(),
                Icon(FeatherIcons.clock,
                    color: isScheduleTile ? Colors.grey : Colors.white,
                    size: 18),
                SizedBox(width: SizeConfig.widthMultiplier * 2),
                Text(
                  '11:00 - 12:00 PM',
                  style: TextStyleConstants.bodyTextSmall
                      .copyWith(color: textColor),
                ),
              ],
            ),
          ),
          SizedBox(height: SizeConfig.heightMultiplier * 2),
          isScheduleTile
              ? Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.heightMultiplier * 0.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppointmentButton(
                        isCancel: true,
                        text: 'Cancel',
                        onTap: () {},
                      ),
                      AppointmentButton(
                        isCancel: false,
                        text: 'Reschedule',
                        onTap: () {},
                      )
                    ],
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}

class AppointmentButton extends StatelessWidget {
  const AppointmentButton({
    super.key,
    required this.isCancel,
    required this.onTap,
    required this.text,
  });
  final bool isCancel;
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 5,
      width: SizeConfig.widthMultiplier * 37,
      decoration: BoxDecoration(
          color: isCancel ? Colors.white : ColorConstants.secondaryColor,
          border: isCancel ? Border.all(color: Colors.grey.shade300) : null,
          borderRadius: BorderRadius.circular(50)),
      child: Center(
        child: Text(
          text,
          style: TextStyleConstants.buttonText
              .copyWith(color: isCancel ? Colors.grey.shade600 : Colors.white),
        ),
      ),
    );
  }
}
