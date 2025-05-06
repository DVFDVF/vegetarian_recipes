import 'dart:ui';

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
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class PickerDate extends StatefulWidget {
  const PickerDate({super.key});

  @override
  _pickerDateState createState() => _pickerDateState();
}

class _pickerDateState extends State<PickerDate> {
  final items = ["",'',''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child:
            ListView(
              children: [
                Column(
                  children: [
                    // 模糊背景容器
                    Stack(
                      children: [

                        Container(
                          height: 200.h,
                          width: 300.w,
                          child:
                          Positioned.fill(
                            child: Transform.translate(
                              offset: Offset(-100.w, 0), // 向上移出屏幕 200 像素，可改为负的 X/Y 值
                              child: ImageFiltered(
                                imageFilter: ImageFilter.blur(sigmaX: 120.w, sigmaY: 120.w), // 建议别用 500
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.centerRight,
                                      end: Alignment.centerLeft,
                                      colors: [
                                        Color(0xFFC5FFE4),
                                        Color(0xFFE2FFC7),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 200.h,
                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(AppText.vegetarianTimeTitle + "1134" + AppText.vegetarianDurationUnit,style: TextStyle(
                                  fontSize: 24.w,
                                  color: AppColors.greenB33,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Text(AppText.vegetarianLightTitle,style: TextStyle(
                                  fontSize: 13.w,
                                  color: AppColors.greenB33
                              ),),

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 100.h,),



                    Container(
                      padding: EdgeInsets.only(left: 20.w,right: 20.w),
                      child:
                      Row(
                        children: [
                          Expanded(child:
                          Container(
                            height: 1.h,
                            color: AppColors.greenB33,
                            margin: EdgeInsets.only(right: 10.w),
                          ),
                          ),
                          Text(AppText.vegetarianTimePickerHint,style: TextStyle(
                              fontSize: 13.w,
                              color: AppColors.greenB33
                          ),),
                          Expanded(child:
                          Container(
                            height: 1.h,
                            color: AppColors.greenB33,
                            margin: EdgeInsets.only(left: 10.w),
                          ),
                          )

                        ],
                      ),
                    ),
                    Container(
                      height: 400.h,
                      child: Column(
                        children: [



                          Expanded(
                            child: DateTimePickerWidget(
                              locale: DateTimePickerLocale.zh_cn, // 中文
                              dateFormat: 'yyyy年 MM月 dd日',
                              // 自定义格式
                              // initialDateTime: DateTime.now(),
                              minDateTime: DateTime(1900),
                              maxDateTime: DateTime(2100),
                              pickerTheme: DateTimePickerTheme(
                                  cancel: Container(
                                    height: 0,
                                  ),
                                  cancelTextStyle: TextStyle(
                                    height: 0,
                                  ),
                                  selectionOverlay: Container(
                                    decoration: BoxDecoration(
                                      // border: Border(top: BorderSide(), bottom: BorderSide()),
                                      color: AppColors.green3C,
                                    ),
                                  ),
                                  itemTextStyle: TextStyle(
                                    fontSize: 16,

                                  ),
                                  backgroundColor: AppColors.none
                              ),
                              onChange: (dateTime, _) {
                                print("选择的日期: $dateTime");
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child:
                      BackShaderText(text: AppText.actionConfirm, fontWeight: null, padding: EdgeInsets.symmetric(vertical: 15.w,horizontal: 10.w), circular: null,),
                    )
                  ],
                )

              ],
            )
        )

    );
  }
}