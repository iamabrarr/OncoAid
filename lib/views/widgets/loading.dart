import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../constants/colors.dart';
import '../../utils/size_config.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    required this.height,
    this.isButton = false,
  }) : super(key: key);
  final double height;
  final bool isButton;
  @override
  Widget build(BuildContext context) {
    final spinKit = SpinKitCircle(
      color: ColorConstants.primaryColor,
      size: isButton
          ? SizeConfig.heightMultiplier * 5
          : SizeConfig.heightMultiplier * 7,
    );
    return SizedBox(
      height: height,
      width: SizeConfig.widthMultiplier * 100,
      child: Center(child: spinKit),
    );
  }
}
