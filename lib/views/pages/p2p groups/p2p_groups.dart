import 'package:OncoAid/constants/decorations.dart';
import 'package:OncoAid/utils/size_config.dart';
import 'package:OncoAid/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class P2PGroupsPage extends StatelessWidget {
  const P2PGroupsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: 'P2P Groups'),
      body: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthMultiplier * 5,
              vertical: SizeConfig.heightMultiplier * 2),
          itemBuilder: (_, i) => Container(
                height: SizeConfig.heightMultiplier * 6,
                width: SizeConfig.widthMultiplier * 90,
                decoration: DecorationConstants.whiteContainer,
                margin:
                    EdgeInsets.only(bottom: SizeConfig.heightMultiplier * 2),
              )),
    );
  }
}
