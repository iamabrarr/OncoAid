import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/doctor%20profile/doctor_profile.dart';
import 'package:OncoAid/views/widgets/row_icon_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DoctorProfilePage(index: index)),
      child: Container(
        margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
            border: Border.all(color: Colors.white),
            color: Colors.grey.shade100.withOpacity(0.8),
            borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.heightMultiplier * 16,
            width: SizeConfig.widthMultiplier * 90,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade200, blurRadius: 6)
                ],
                borderRadius: BorderRadius.circular(16)),
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 1,
                horizontal: SizeConfig.widthMultiplier * 2),
            child: Row(children: [
              //DOCTOR IMAGE
              Hero(
                tag: index,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height: SizeConfig.heightMultiplier * 14,
                    width: SizeConfig.widthMultiplier * 25,
                    color: Colors.grey.shade200,
                    child: Image.network(
                      doctorPicture,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: SizeConfig.widthMultiplier * 3),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //NAME
                  Text(
                    'Dr. Joshua Simorangkir',
                    style: TextStyleConstants.buttonText
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 1),
                  //PLACE AND AGE
                  const Row(
                    children: [
                      RowIconInfo(
                        icon: Icons.location_on_rounded,
                        text: 'California',
                      ),
                      RowIconInfo(
                        icon: Icons.person_pin_rounded,
                        text: 'Age 28',
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 2),
                  SizedBox(
                      width: SizeConfig.widthMultiplier * 50,
                      child: Text(
                          'Meet Dr Joshua Ipsum, a highly skilled heart doctor',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyleConstants.bodyTextSmall.copyWith(
                              color: Colors.blueGrey,
                              fontSize: SizeConfig.textMultiplier * 1.5))),
                  SizedBox(height: SizeConfig.heightMultiplier * 1),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
