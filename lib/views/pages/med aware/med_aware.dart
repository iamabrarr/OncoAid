import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/pages/med%20detail/med_detail.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:OncoAid/views/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MedAwarePage extends StatelessWidget {
  MedAwarePage({super.key});
  TextEditingController searchCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Med Aware'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(
                hintText: 'Search for any medicine', controller: searchCont),
            SizedBox(height: SizeConfig.heightMultiplier * 3),
            Text(
              '"Results"',
              style: TextStyleConstants.buttonText,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.widthMultiplier * 2,
                      vertical: SizeConfig.heightMultiplier * 2),
                  shrinkWrap: true,
                  itemBuilder: (_, i) => MedTile(index: i)),
            )
          ],
        ),
      ),
    );
  }
}

class MedTile extends StatelessWidget {
  const MedTile({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const MedDetailPage()),
      child: Container(
        height: SizeConfig.heightMultiplier * 9,
        width: SizeConfig.widthMultiplier * 90,
        margin: EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
        decoration: DecorationConstants.whiteContainer.copyWith(boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200, blurRadius: 15, spreadRadius: 1)
        ]),
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.widthMultiplier * 3),
        child: Row(
          children: [
            CircleAvatar(
              radius: SizeConfig.widthMultiplier * 6,
              backgroundColor: ColorConstants.randomColors[index],
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    Image.asset(IconsConstants.medicine, color: Colors.white),
              ),
            ),
            SizedBox(width: SizeConfig.widthMultiplier * 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Panadol', style: TextStyleConstants.buttonText),
                Text('2 mg', style: TextStyleConstants.subtitle)
              ],
            )
          ],
        ),
      ),
    );
  }
}
