import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Activity'),
      body: ListView.builder(
          itemCount: 4,
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.heightMultiplier * 2,
              horizontal: SizeConfig.widthMultiplier * 7),
          itemBuilder: (_, i) => Container(
                width: SizeConfig.widthMultiplier * 90,
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 3),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: SizeConfig.widthMultiplier * 7,
                      backgroundColor:
                          ColorConstants.randomColors[i * 3].withOpacity(0.2),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(notifications[i]['Icon']),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: SizeConfig.widthMultiplier * 65,
                          child: Text(
                            notifications[i]['Text'],
                            style: TextStyleConstants.bodyTextSmall,
                          ),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 0.5),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(notifications[i]['Time'],
                              style: TextStyleConstants.subtitle.copyWith(
                                  fontSize: SizeConfig.textMultiplier * 1.2)),
                        )
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}
