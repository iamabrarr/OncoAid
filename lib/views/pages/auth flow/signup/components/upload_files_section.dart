import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/constants/icons.dart';
import 'package:OncoAid/constants/textstyles.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/services/file_picker.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UploadFilesSection extends StatelessWidget {
  final cont = Get.find<AuthCont>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: cont.pickedFiles.isNotEmpty
          ? MainAxisAlignment.start
          : MainAxisAlignment.center,
      children: [
        cont.pickedFiles.isNotEmpty
            ? Wrap(
                children: [
                  //LIST OF FILES
                  ...List.generate(
                      cont.pickedFiles.length,
                      (index) => Container(
                            height: SizeConfig.heightMultiplier * 9,
                            width: SizeConfig.widthMultiplier * 20,
                            margin: EdgeInsets.only(
                                right: SizeConfig.widthMultiplier * 2,
                                bottom: SizeConfig.heightMultiplier * 1),
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(6)),
                            padding: EdgeInsets.only(
                                top: SizeConfig.heightMultiplier * 1.5),
                            child: Column(
                              children: [
                                Image.asset(IconsConstants.file,
                                    height: SizeConfig.heightMultiplier * 4),
                                const SizedBox(height: 5),
                                Text(
                                  'File ${index + 1}',
                                  style: TextStyleConstants.subtitle,
                                )
                              ],
                            ),
                          )),
                  //ADD MORE FILE BUTTON
                  GestureDetector(
                    onTap: () async =>
                        await FilePickerService.pickFile() != null
                            ? cont.pickedFiles.add(FilePickerService.pickFile())
                            : null,
                    child: Container(
                        height: SizeConfig.heightMultiplier * 9,
                        width: SizeConfig.widthMultiplier * 20,
                        margin: EdgeInsets.only(
                            right: SizeConfig.widthMultiplier * 2,
                            bottom: SizeConfig.heightMultiplier * 1),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                          child: CircleAvatar(
                            radius: SizeConfig.widthMultiplier * 3.5,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                        )),
                  )
                ],
              )
            : const SizedBox(),
        //IF FILES ARE EMPTY
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(IconsConstants.folder,
                height: SizeConfig.heightMultiplier * 2.5),
            SizedBox(width: SizeConfig.widthMultiplier * 4),
            Text(
              'Add your necessary files',
              style: TextStyleConstants.buttonText,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.heightMultiplier * 2),
        GestureDetector(
          onTap: () async => await FilePickerService.pickFile() != null
              ? cont.pickedFiles.add(FilePickerService.pickFile())
              : null,
          child: Container(
            height: SizeConfig.heightMultiplier * 5,
            width: SizeConfig.widthMultiplier * 30,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'Select Files',
                style:
                    TextStyleConstants.buttonText.copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
