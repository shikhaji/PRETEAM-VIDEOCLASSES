import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../model/course_purchased_model.dart';
import '../../routes/app_routes.dart';
import '../../routes/arguments.dart';
import '../../services/api_services.dart';
import '../../services/shared_preferences.dart';
import '../../utils/app_color.dart';
import '../../utils/app_sizes.dart';
import '../../utils/app_text_style.dart';
import '../../utils/constant.dart';
import '../../utils/screen_utils.dart';
import '../../widgets/custom_size_box.dart';
import '../../widgets/drawer_widget.dart';
import '../../widgets/primary_appbar.dart';
import '../../widgets/scrollview.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  List<Course> myOrderList=[];
  List<Course> getAllCourses=[];
  List<Course> allCourseListRes = [];
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();



  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    callApi();
  }

  Future<void> callApi()async {
    String? id = await Preferances.getString("userId");
    FormData data() {
      return FormData.fromMap({
        "loginid":id?.replaceAll('"', '').replaceAll('"', '').toString(),
        "status" :"1",
      });
    }
    GetPurchasedCourseCategory? _getPurchaseCourseCategory= await ApiService().getPurchasedCourses(context,data: data());

    if(_getPurchaseCourseCategory != null){

      getAllCourses = _getPurchaseCourseCategory.course
          !.map((e) => Course.fromJson(e.toJson()))
          .toList();
      allCourseListRes = _getPurchaseCourseCategory.course
          !.map((e) => Course.fromJson(e.toJson()))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 0,
          width: ScreenUtil().screenWidth * 0.8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Sizes.s20.r),
              bottomRight: Radius.circular(Sizes.s20.r),
            ),
          ),
          child: const DrawerWidget(),
        ),
        body: CustomScroll(
          children: [
            SizedBoxH10(),

            ListView.builder(
              padding: EdgeInsets.symmetric(vertical: Sizes.s20.h),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: getAllCourses.length,
              itemBuilder: (context, inx) {
                return CoursesListContainer(
                    image: getAllCourses[inx].cCFVCOURSEIMAGE ?? "",
                    ccid: getAllCourses[inx].cCFVID ?? "",
                    name:getAllCourses[inx].cCFVNAME ?? "",
                    lessons: "${getAllCourses[inx].cCFVTOTALLESSONS ?? ""} Lessons",


                );


              },

            ),



          ],
        ),
        appBar: SecondaryAppBar(
          title: "My Class",
          isLeading: true,
          leadingIcon: Icons.menu,
          onBackPressed: () {
            openDrawer();
          },
        ));
  }
  Widget CoursesListContainer({
    required String image,
    required String name,
    required String lessons,
    required String ccid,
  }){
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, Routs.courseDetail,
                arguments: OtpArguments(
                  ccId:ccid,
                  ccCourseName:name,
                  ccImg:image,
                ));
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.textFieldColor,
              borderRadius: BorderRadius.circular(textFieldBorderRadius),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: Sizes.s80.h,
                              width: Sizes.s120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image:  NetworkImage("https://vedioclasses.provisioningtech.com/uploads/${image}"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            SizedBoxW8(),
                            Flexible(
                              flex: 6,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: AppTextStyle.alertSubtitle
                                        .copyWith(fontSize: Sizes.s14.h),
                                  ),
                                  SizedBoxH8(),
                                  Text(lessons,
                                      style: AppTextStyle.alertSubtitle)


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      Column(
                        children: [
                          SizedBoxH8(),
                          IconButton(onPressed: (){

                            Navigator.pushNamed(context, Routs.paymentDes,arguments: OtpArguments(ccId:ccid));
                            debugPrint("CCID$ccid");
                          }, icon: Icon(Icons.receipt_long_outlined,),iconSize: 30, color: AppColor.primaryLightColor,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBoxH10(),
      ],
    );


  }
}

