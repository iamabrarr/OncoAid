import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DobSection extends StatelessWidget {
  final cont = Get.find<AuthCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.heightMultiplier * 25,
          width: SizeConfig.widthMultiplier * 90,
          child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              dateOrder: DatePickerDateOrder.dmy,
              minimumDate: DateTime.utc(1950),
              maximumDate: DateTime.now().add(const Duration(hours: 1)),
              initialDateTime: DateTime.now(),
              onDateTimeChanged: (val) => cont.userDob.value = val.toString()),
        )
      ],
    );
  }
}
