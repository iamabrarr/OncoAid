import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/book%20appoint/book_appoint.dart';
import 'package:OncoAid/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorProfilePage extends StatelessWidget {
  const DoctorProfilePage({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        foregroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
          child: const BackButton(),
        ),
        elevation: 0,
        title: Text(
          'Detail Doctor',
          style: TextStyleConstants.headingNormal.copyWith(color: Colors.white),
        ),
      ),
      bottomSheet: Container(
        height: SizeConfig.heightMultiplier * 10,
        width: SizeConfig.widthMultiplier * 100,
        margin:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 7),
        child: Center(
          child: BookAppointBtn(onTap: () {}),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UpperDrDetail(heroTag: index),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier * 2.5,
                horizontal: SizeConfig.widthMultiplier * 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                //PATIENTS
                DrDetailSmallBox(title: 'Patients', subtitle: '100+'),
                //EXPERIENCE
                DrDetailSmallBox(title: 'Experience', subtitle: '10 Years'),
                //RATING
                DrDetailSmallBox(title: 'Rating', subtitle: '4.5'),
              ],
            ),
          ),
          //DOCTOR DESCRIPTION
          _heading('About Doctor'),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 7),
            child: Text(
              'Dr. Joshua Simorangkir is a specialist in internal medicine who sepcializes.',
              style: TextStyleConstants.buttonText.copyWith(color: Colors.grey),
            ),
          ),
          //MAP
          _heading('Location'),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/icons/dummy_map.png',
                height: SizeConfig.heightMultiplier * 22,
                width: SizeConfig.widthMultiplier * 86,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _heading(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.heightMultiplier * 2,
          horizontal: SizeConfig.widthMultiplier * 7),
      child: Text(
        text,
        style:
            TextStyleConstants.buttonText.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}

class BookAppointBtn extends StatelessWidget {
  const BookAppointBtn({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 1),
      child: ElevatedButton(
          onPressed: () => Get.to(() => const BookAppointPage(doctorID: '1')),
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.primaryColor,
              disabledBackgroundColor:
                  ColorConstants.primaryColor.withOpacity(0.3),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60))),
          child: SizedBox(
            height: SizeConfig.heightMultiplier * 6,
            width: SizeConfig.widthMultiplier * 90,
            child: Center(
              child: Text(
                'Book Appointment',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: SizeConfig.textMultiplier * 1.8),
              ),
            ),
          )),
    );
  }
}

class DrDetailSmallBox extends StatelessWidget {
  const DrDetailSmallBox({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 12,
      width: SizeConfig.widthMultiplier * 25,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyleConstants.subtitle),
          SizedBox(height: SizeConfig.heightMultiplier * 0.6),
          Text(
            subtitle,
            style: TextStyleConstants.buttonText.copyWith(
                color: ColorConstants.darkBlueColor,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class UpperDrDetail extends StatelessWidget {
  const UpperDrDetail({
    super.key,
    required this.heroTag,
  });
  final int heroTag;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 18,
      width: SizeConfig.widthMultiplier * 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: SizeConfig.heightMultiplier * 14,
              width: SizeConfig.widthMultiplier * 100,
              decoration: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14))),
            ),
          ),
          Positioned(
              bottom: SizeConfig.heightMultiplier * 1,
              child: Container(
                height: SizeConfig.heightMultiplier * 12,
                width: SizeConfig.widthMultiplier * 86,
                decoration: DecorationConstants.whiteContainer.copyWith(
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          spreadRadius: 1)
                    ]),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 6,
                    vertical: SizeConfig.heightMultiplier * 2.5),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //DOCTOR NAME
                        Text(
                          'Dr. Muhammed Shahid',
                          style: TextStyleConstants.buttonText
                              .copyWith(color: ColorConstants.darkBlueColor),
                        ),
                        SizedBox(height: SizeConfig.heightMultiplier * 0.7),
                        //SPEACIALIZATION
                        Text(
                          'Heart Specialist - San Fransisco',
                          style: TextStyleConstants.subtitle.copyWith(
                              fontSize: SizeConfig.textMultiplier * 1.4),
                        ),
                      ],
                    ),
                    const Spacer(),
                    //DOCTOR PICTURE
                    Hero(
                      tag: heroTag,
                      child: Image.network(doctorPicture,
                          height: SizeConfig.heightMultiplier * 8,
                          width: SizeConfig.widthMultiplier * 15,
                          fit: BoxFit.cover),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
