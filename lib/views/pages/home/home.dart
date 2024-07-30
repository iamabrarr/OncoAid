import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'components/appointment_tile.dart';
import 'components/doctor_tile.dart';
import 'components/more_tile.dart';
import '../../widgets/search_bar.dart';
import 'components/user_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              ZoomDrawer.of(context)?.toggle();
            },
            icon: Image.asset(
              IconsConstants.menu,
              height: SizeConfig.heightMultiplier * 3.5,
            )),
        actions: [
          CircleAvatar(
            radius: SizeConfig.widthMultiplier * 4.5,
            backgroundColor: Colors.grey.shade200,
            backgroundImage: NetworkImage(userPicture),
          ),
          SizedBox(width: SizeConfig.widthMultiplier * 5)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //GREETINGS
              Row(
                children: [
                  Text(
                    'Hello,',
                    style: TextStyleConstants.headingMedium,
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier * 2),
                  Text(
                    'Abrar Ahmad',
                    style: TextStyleConstants.headingMedium
                        .copyWith(color: ColorConstants.primaryColor),
                  )
                ],
              ),
              //QUOTATION
              Text(
                '“Every day you wake up is another opportunity to be a blessing to someone else.”',
                style: TextStyleConstants.subtitle,
              ),
              //SEARCHBAR
              CustomSearchBar(hintText: 'Search for a doctor', isEnable: false),
              SizedBox(height: SizeConfig.heightMultiplier * 2),
              //USER ITEMS
              UserItems(),

              //TODAY APPOINTMENTS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  heading('Appointment Today'),
                  TextButton(
                      onPressed: () {},
                      child: Text('See All',
                          style: TextStyleConstants.bodyTextSmall
                              .copyWith(color: ColorConstants.yellowColor)))
                ],
              ),
              //TILE
              const AppointmentTile(),
              MoreTile(
                  color: ColorConstants.primaryColor.withOpacity(0.5),
                  paddingHoriz: SizeConfig.widthMultiplier * 5),
              MoreTile(
                  color: ColorConstants.primaryColor.withOpacity(0.2),
                  paddingHoriz: SizeConfig.widthMultiplier * 10),

              //DOCTORS
              heading('Top Doctors'),
              ListView.builder(
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 1,
                  ),
                  itemBuilder: (_, i) {
                    return DoctorTile(index: i);
                  })
            ],
          ),
        ),
      ),
    );
  }

  Widget heading(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.heightMultiplier * 2),
      child: Text(
        text,
        style: TextStyleConstants.headingNormal
            .copyWith(fontWeight: FontWeight.w500),
      ),
    );
  }
}
