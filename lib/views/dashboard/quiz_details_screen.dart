import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_team/utils/app_color.dart';
import '../../routes/app_routes.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_sizes.dart';
import '../../utils/app_text_style.dart';
import '../../widgets/app_text.dart';
import '../../widgets/custom_size_box.dart';
import '../../widgets/primary_appbar.dart';
import '../../widgets/scrollview.dart';

class QuizDetailsScreen extends StatefulWidget {
  const QuizDetailsScreen({Key? key}) : super(key: key);

  @override
  State<QuizDetailsScreen> createState() => _QuizDetailsScreenState();
}

class _QuizDetailsScreenState extends State<QuizDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: Sizes.s200,
              color: AppColor.lightYellow,
              child: Container(
                child: Column(
                 children: [
                   SizedBoxH10(),
                   Container(
                     alignment: Alignment.center,
                     color: AppColor.darkBlue,
                     height: Sizes.s30,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         appText("Contest ID GM001",style: AppTextStyle.buttonTextStyle1,),
                         appText("Start On",style: AppTextStyle.buttonTextStyle1,),
                         appText("Contest ID GM001",style: AppTextStyle.buttonTextStyle1,),
                       ],
                     ),
                   ),
                   Container(
                     color: AppColor.sand,
                     height: Sizes.s90,
                     alignment: Alignment.center,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         appText("Total Participants = 1000",style: AppTextStyle.titleRed,),
                        ],
                     ),
                   ),
                   Container(
                     alignment: Alignment.center,
                     color: AppColor.darkBlue,
                     height: Sizes.s30,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Row(
                           children: [
                             Image.asset(AppAsset.winner,scale:25),
                             SizedBoxW6(),
                             Icon(Icons.currency_rupee,size: 12,color: Colors.white,),
                             appText("15000",style: AppTextStyle.buttonTextStyle1,),
                           ],
                         ),
                         SizedBoxW10(),
                         appText("Start On",style: AppTextStyle.buttonTextStyle1,),
                         appText("Contest ID GM001",style: AppTextStyle.buttonTextStyle1,),
                       ],
                     ),
                   ),
                   SizedBoxH10(),
                   Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         appText("CONTEST RULES",style: AppTextStyle.titleRed),
                       ],
                     ),
                   ),
                 ],
                ),
              ),
            ),
            SizedBox(
              height: double.maxFinite,
              width: double.infinity,
              child: Column(
                children: [
                  SizedBoxH34(),
                  Container(
                    width: Sizes.s350,
                    height: Sizes.s100,
                    color: AppColor.sand,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: AppColor.sand,
                                child: Row(
                                  children: [
                                    SizedBoxW8(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        appText("Rule:0",
                                            style: AppTextStyle.alertSubtitleRed
                                                .copyWith(fontSize: Sizes.s16.h)),
                                        SizedBoxH6(),
                                        appText("ENGLISH TEXT",
                                            style: AppTextStyle.body1
                                                .copyWith(fontSize: Sizes.s16.h)),
                                        appText("HINDI TEXT",
                                            style: AppTextStyle.alertSubtitle
                                                .copyWith(fontSize: Sizes.s16.h)),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: Sizes.s2,
                    width: Sizes.s350,
                    color: AppColor.red,
                  ),
                  Container(
                    height: Sizes.s100,
                    width: Sizes.s350,
                    color: AppColor.sand,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    SizedBoxW8(),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        appText("Rule:1",
                                            style: AppTextStyle.alertSubtitleRed
                                                .copyWith(fontSize: Sizes.s16.h)),
                                        SizedBoxH6(),
                                        appText("HINDI TEXT RULE 3",
                                            style: AppTextStyle.body1
                                                .copyWith(fontSize: Sizes.s16.h)),
                                        appText("ENGLISH TEXT RULE 3",
                                            style: AppTextStyle.alertSubtitle
                                                .copyWith(fontSize: Sizes.s16.h)),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),
      ),

      appBar: SecondaryAppBar(
        title: "Take Quiz",
        isLeading: true,
        leadingIcon: Icons.arrow_back,
      ),

      bottomNavigationBar:
      Material(
        color: AppColor.darkBlue,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routs.questionScreen);
          },
          child: const SizedBox(
            height: Sizes.s50,
            width: double.infinity,
            child: Center(
              child: Text(
                'Start Quiz',
                style: AppTextStyle.buttonTextStyle2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
