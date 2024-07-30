import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/home/components/appointment_tile.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';

class UserAppointments extends StatelessWidget {
  const UserAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Schedule'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: ContainedTabBarView(
          tabs: [
            Text("Upcoming", style: TextStyleConstants.bodyTextSmall),
            Text("Complete", style: TextStyleConstants.bodyTextSmall),
            Text("Cancel", style: TextStyleConstants.bodyTextSmall)
          ],
          tabBarProperties: TabBarProperties(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 100,
            background: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(50)),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 1),
            indicator: ContainerTabIndicator(
                height: SizeConfig.heightMultiplier * 5,
                width: SizeConfig.widthMultiplier * 30,
                color: ColorConstants.primaryColor,
                radius: BorderRadius.circular(50),
                borderColor: Colors.black),
            indicatorColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey.shade600,
          ),
          views: [AllAppointments(), AllAppointments(), AllAppointments()],
        ),
      ),
    );
  }
}

class AllAppointments extends StatelessWidget {
  const AllAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 2),
        itemBuilder: (_, i) {
          return const AppointmentTile(isScheduleTile: true);
        });
  }
}
