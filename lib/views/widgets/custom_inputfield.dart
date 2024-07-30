import 'package:OncoAid/constants/colors.dart';
import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

class CustomInputField extends StatefulWidget {
  const CustomInputField(
      {Key? key,
      required this.controller,
      required this.labelText,
      required this.keyboardType,
      this.isPassword = false})
      : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final TextInputType keyboardType;
  final bool isPassword;
  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.heightMultiplier * 1),
      child: Obx(
        () => TextField(
          enabled: !Get.find<AuthCont>().isLoading.value,
          obscureText: widget.isPassword ? obscureText : false,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          style: const TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () => setState(() {
                            obscureText = !obscureText;
                          }),
                      icon: Icon(
                        obscureText ? FeatherIcons.eye : FeatherIcons.eyeOff,
                        size: 20,
                      ))
                  : null,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: ColorConstants.primaryColor, width: 1.8)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.5)),
              label: Text(
                widget.labelText,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.grey.shade400),
              )),
        ),
      ),
    );
  }
}
