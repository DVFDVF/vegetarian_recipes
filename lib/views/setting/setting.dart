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

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final items = ["",'',''];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
          padding: EdgeInsets.only(left: 15.h, right: 15.h, top: 30.h),
          color: AppColors.white,
          child: Column(
            children: [
              // 内容部分可滚动
              Expanded(
                child: ListView(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // 左侧图片
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7.h), // 圆角半径
                          child:
                          Image.network(
                            'http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
                            width: 50.w,
                            height: 50.w,
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(width: 10.w),

                        // 中间两列文字
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '清蒸素鲶鱼—M与HSAAI',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                AppText.accountM,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),

                        // 右侧图片
                        Image.asset(
                          'assets/slices/返回.png',
                          width: 50.w,
                          height: 50.w,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(height: 30.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppText.settingsFeedback,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          AppText.settingsUserAgreement,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          AppText.settingsPrivacyPolicy,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                        SizedBox(height: 50.h),
                        Text(
                          AppText.settingsInviteFriend,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          AppText.settingsRateApp,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          AppText.settingsClearCache,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17,
                            fontSize: 16.h,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // 底部部分固定在页面底部
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Text(
                    AppText.logoutLabel,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.red29,
                      fontSize: 18.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    AppText.appVersionLabel,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black17,
                      fontSize: 12.h,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.h), // 底部留白
            ],
          ),
        )


    );
  }
}