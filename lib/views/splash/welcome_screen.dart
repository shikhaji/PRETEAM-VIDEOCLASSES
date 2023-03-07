import 'package:flutter/material.dart';
import 'package:pr_team/views/auth/mobile_verification_screen.dart';
import 'package:pr_team/views/auth/otp_verification_screen.dart';
import 'package:sizer/sizer.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_text_style.dart';
import '../../widgets/app_text.dart';
import '../../widgets/custom_size_box.dart';
import '../../widgets/primary_button.dart';
import '../auth/login_screen.dart';
import '../auth/signUp.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBoxH120(),
                Image.asset(
                  AppAsset.splashImage,
                  height: 20.h,
                ),
                SizedBoxH30(),
                appText("Welcome to ",style:AppTextStyle.title ),
                appText("PR Team",style:AppTextStyle.title ),
                SizedBoxH34(),
                appText("Already have an account ?",style:AppTextStyle.lable ),
                SizedBoxH14(),
                Center(
                  child: PrimaryButton(
                      lable: "Login",
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>LoginScreen()));
                        //  clearField();
                      }),
                ),
                SizedBoxH14(),
                appText("or",style:AppTextStyle.lable ),
                SizedBoxH14(),
                Center(
                  child: PrimaryButton(
                      lable: "Sign Up",
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>MobileVerificationScreen()));
                        //  clearField();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
