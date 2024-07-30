import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/appointments/appointments.dart';
import 'package:OncoAid/views/pages/med%20aware/med_aware.dart';
import 'package:OncoAid/views/pages/support/support.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserItems extends StatelessWidget {
  UserItems({
    super.key,
  });
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
              homeUserItems.length,
              (index) => Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Get.to(() => const UserAppointments());
                          }
                          if (index == 1) {
                            Get.to(() => MedAwarePage());
                          }
                          if (index == 2) {
                            Get.to(() => const SupportGroupPage());
                          }
                        },
                        child: Container(
                          height: SizeConfig.heightMultiplier * 7,
                          width: SizeConfig.widthMultiplier * 14,
                          decoration: BoxDecoration(
                              color:
                                  ColorConstants.primaryColor.withOpacity(0.1),
                              shape: BoxShape.circle),
                          child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Image.asset(homeUserItems[index]['Icon'])),
                        ),
                      ),
                      SizedBox(height: SizeConfig.heightMultiplier * 1),
                      Text(
                        homeUserItems[index]['Title'],
                        style: TextStyleConstants.subtitle.copyWith(
                            fontSize: SizeConfig.textMultiplier * 1.4,
                            color: Colors.grey.shade800),
                      )
                    ],
                  ))
        ],
      ),
    );
  }
}
