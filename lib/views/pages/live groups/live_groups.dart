import 'package:OncoAid/constants/data.dart';
import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';

class LiveGroupsPage extends StatelessWidget {
  const LiveGroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'Live Groups'),
      body: AnimationLimiter(
        child: GridView.count(
          childAspectRatio: 0.85,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 3,
              vertical: SizeConfig.heightMultiplier * 2),
          crossAxisSpacing: SizeConfig.widthMultiplier * 4,
          crossAxisCount: 2,
          children: List.generate(
            5,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: 2,
                child: ScaleAnimation(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastLinearToSlowEaseIn,
                    child: FadeInAnimation(
                        child: GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 2),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              bottom: SizeConfig.heightMultiplier * 1,
                              child: Container(
                                height: SizeConfig.heightMultiplier * 15,
                                width: SizeConfig.widthMultiplier * 40,
                                decoration: DecorationConstants.whiteContainer,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Courage',
                                        style: TextStyleConstants.buttonText,
                                      ),
                                      Text(
                                        'by Dr. Fiza Ahmad',
                                        style: TextStyleConstants.subtitle,
                                      ),
                                      SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier * 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '${34 * index + 1}',
                                            style: TextStyleConstants.subtitle,
                                          ),
                                          const Icon(
                                            Icons.person,
                                            size: 20,
                                            color: Colors.grey,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          height:
                                              SizeConfig.heightMultiplier * 1),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: SizeConfig.heightMultiplier * 10,
                                    width: SizeConfig.widthMultiplier * 20,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(doctorPicture),
                                            fit: BoxFit.cover),
                                        border: Border.all(
                                            color: Colors.red.shade700,
                                            width: 1.5),
                                        color: Colors.grey.shade100,
                                        shape: BoxShape.circle),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      child: Image.asset(
                                        IconsConstants.liveBanner,
                                        color: Colors.red.shade700,
                                        height: SizeConfig.heightMultiplier * 3,
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ))),
              );
            },
          ),
        ),
      ),
    );
  }
}
