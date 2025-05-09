import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/examine/examineHistory.dart';
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/home/homeHot.dart';
import 'package:vegetarian_recipes/views/search/search.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final items = ["",'',''];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Stack(
              children: [
                Image.asset("assets/slices/背景.png"),
                Container(
                    padding: EdgeInsets.only(left: 15.h,right: 15.h,top: 30.h),
                    child:
                    ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppText.appLoginTitle,
                                style: TextStyle(
                                    fontSize: 32.h,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.greenF58),

                              ),
                              Text(AppText.appLoginPhoneHint,
                                style: TextStyle(fontSize: 14.h,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.greenF58),),
                              SizedBox(height: 150.h,),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.black17,
                                  borderRadius: BorderRadius.circular(22.h),
                                ),
                                height: 44.h,
                                child:
                                BackShaderDeText(text: AppText.appLoginWechat, borderRadius: 22.h,),
                              ),
                              SizedBox(height: 20.h,),
                              Container(
                                alignment: Alignment.center,

                                padding: EdgeInsets.all(14.h),
                                decoration: BoxDecoration(
                                  color: AppColors.black17,
                                  borderRadius: BorderRadius.circular(22.h),
                                ),
                                child:
                                Text(AppText.appLoginApple,
                                  style: TextStyle(fontSize: 12.h,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.white),),
                              ),
                              SizedBox(height: 20.h,),
                              Container(
                                alignment: Alignment.center,

                                padding: EdgeInsets.all(14.h),
                                decoration: BoxDecoration(
                                  color: AppColors.greyF7,
                                  borderRadius: BorderRadius.circular(22.h),
                                ),
                                child:
                                Text(AppText.appLoginPhone,
                                  style: TextStyle(fontSize: 12.h,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black17),),
                              ),
                              SizedBox(height: 20.h,),
                              Row(
                                children: [
                                  Image.asset(
                                      "assets/slices/菜谱编辑_选中.png",
                                    width: 20.h,
                                  ),
                                  SizedBox(width: 5.h,),
                                  Text(AppText.appLoginAgreement,
                                    style: TextStyle(fontSize: 12.h,
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.black17),
                                  ),

                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    )
                )
              ],
            )
    );
  }
}