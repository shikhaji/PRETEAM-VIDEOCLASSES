import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_team/utils/app_text_style.dart';
import 'package:pr_team/views/splash/welcome_screen.dart';
import 'package:pr_team/widgets/app_text.dart';
import 'package:sizer/sizer.dart';
import '../../routes/arguments.dart';
import '../../services/shared_preferences.dart';
import '../../utils/app_assets.dart';
import '../../widgets/custom_size_box.dart';
import '../dashboard/main_home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    Future.delayed(Duration(seconds: 3)).then((value) async {
      String? id = await Preferances.getString("userId");
      String? token = await Preferances.getString("Token");
      print("userId:=${id}");
      print("token:=${token}");
      if (id != null ) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) =>  MainHomeScreen(arguments: OtpArguments(bottomIndex: 0),)),
            (Route<dynamic> route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
            (Route<dynamic> route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBoxH120(),
            SizedBoxH120(),
            Image.asset(
              AppAsset.mainLogoImage,
              height: 25.h,
            ),
            appText("PR TEAM",style: AppTextStyle.title),
          ],
        ),
      )
    ));
  }
}
