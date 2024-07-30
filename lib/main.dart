import 'package:OncoAid/controllers/auth_cont.dart';
import 'package:OncoAid/views/pages/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';
import 'utils/size_config.dart';
import 'views/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);

            Get.put(AuthCont());
            return GetMaterialApp(
              // initialBinding: AuthBindings(),
              theme: ThemeData(
                  fontFamily: 'Poppins',
                  cupertinoOverrideTheme: CupertinoThemeData(
                      textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: SizeConfig.textMultiplier * 2.2,
                        fontWeight: FontWeight.w500),
                  )),
                  colorScheme: ThemeData().colorScheme.copyWith(
                        primary: ColorConstants.primaryColor,
                      ),
                  scaffoldBackgroundColor: Colors.white),
              debugShowCheckedModeBanner: false,
              home: const SplashPage(),
            );
          },
        );
      },
    );
  }
}
