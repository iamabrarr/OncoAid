import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomProgressBar extends StatelessWidget {
  final cont = Get.find<AuthCont>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.heightMultiplier * 4,
      width: SizeConfig.widthMultiplier * 90,
      child: Obx(
        () => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(4, (index) {
              final Color selectedColor = ColorConstants.primaryColor;
              final bool isSelected = index < cont.currentSection.value;
              return SizedBox(
                height: SizeConfig.heightMultiplier * 4,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      height: 2,
                      width: index == 0
                          ? SizeConfig.widthMultiplier * 25
                          : SizeConfig.widthMultiplier * 20,
                      margin: EdgeInsets.only(
                          right:
                              index == 3 ? SizeConfig.widthMultiplier * 1 : 0,
                          left:
                              index == 0 ? SizeConfig.widthMultiplier * 1 : 0),
                      color: isSelected ? selectedColor : Colors.grey.shade200,
                    ),
                    index == 0
                        ? Positioned(
                            left: 0,
                            child: Icon(Icons.circle,
                                size: SizeConfig.widthMultiplier * 5,
                                color: ColorConstants.primaryColor))
                        : const SizedBox(),
                    Positioned(
                        right: 0,
                        child: Icon(
                          Icons.circle,
                          size: SizeConfig.widthMultiplier * 5,
                          color:
                              isSelected ? selectedColor : Colors.grey.shade200,
                        ))
                  ],
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
