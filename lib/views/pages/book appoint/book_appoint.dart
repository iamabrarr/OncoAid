import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/calendar.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';

class BookAppointPage extends StatefulWidget {
  const BookAppointPage({Key? key, required this.doctorID}) : super(key: key);
  final String doctorID;

  @override
  State<BookAppointPage> createState() => _BookAppointPageState();
}

class _BookAppointPageState extends State<BookAppointPage> {
  final format = DateFormat("MMMM dd, yyyy");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: SizeConfig.heightMultiplier * 12,
        width: SizeConfig.widthMultiplier * 100,
        color: Colors.white,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.widthMultiplier * 6),
            child: CustomButton(text: "Confirm Booking", onTap: () {}),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 2),
              child: const BackButton(),
            ),
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
              child:
                  Text("Select Date", style: TextStyleConstants.headingMedium),
            ),

            ///TABLE Calendar///
            BookingCalendar(
              doctorID: widget.doctorID,
            ),

            Padding(
              padding: EdgeInsets.only(left: SizeConfig.widthMultiplier * 5),
              child: Text("Available Times",
                  style: TextStyleConstants.headingMedium),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 2,
            ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.widthMultiplier * 5),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: SizeConfig.heightMultiplier * 2,
                  crossAxisSpacing: SizeConfig.widthMultiplier * 4,
                  childAspectRatio: 1.2,
                ),
                itemCount: 4,
                itemBuilder: (_, index) => GestureDetector(
                      onTap: () {},
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        padding: EdgeInsets.symmetric(
                            vertical: SizeConfig.heightMultiplier * 1,
                            horizontal: SizeConfig.widthMultiplier * 5),
                        decoration: DecorationConstants.whiteContainer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('11:00 AM',
                                style: TextStyleConstants.bodyTextSmall),
                            Text('To',
                                style: TextStyleConstants.buttonText.copyWith(
                                    color: ColorConstants.secondaryColor)),
                            Text('12:00 AM',
                                style: TextStyleConstants.bodyTextSmall),
                          ],
                        ),
                      ),
                    )),

            SizedBox(
              height: SizeConfig.heightMultiplier * 20,
            )
          ],
        ),
      ),
    );
  }
}
