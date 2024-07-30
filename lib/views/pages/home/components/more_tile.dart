import 'package:OncoAid/utils/size_config.dart';
import 'package:flutter/material.dart';

class MoreTile extends StatelessWidget {
  const MoreTile({
    super.key,
    required this.color,
    required this.paddingHoriz,
  });
  final Color color;
  final double paddingHoriz;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.heightMultiplier * 1.5,
      width: SizeConfig.widthMultiplier * 88,
      margin: EdgeInsets.symmetric(horizontal: paddingHoriz),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12))),
    );
  }
}
