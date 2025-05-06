
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';


class Add extends StatefulWidget {
  const Add({super.key});

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final List<String> ingredients = [
    '鸡蛋',
    '牛奶',
    '面粉',
    '白糖',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Column(
              children: [
                Expanded(child:
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                    child:
                    ListView(
                      children: [
                        Container(
                          // padding: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(20),
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                            child: Image.asset("assets/slices/返回.png",width: 20.w,),
                                          ),
                                          Text(AppText.recipeSubmissionTitle,style: TextStyle(
                                            color: AppColors.black17,
                                            fontWeight: FontWeight.bold
                                          ),),
                                          InkWell(
                                            child: Image.asset("assets/slices/审核记录.png",width: 20.w,),
                                          )

                                        ],
                                      )
                                  ),
                                ],
                              ),
                              Text(AppText.recipeNameHint,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: AppColors.greenF3,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: AppText.recipeNameEmptyWarning,
                                    hintStyle: TextStyle(
                                      color: AppColors.greyBD,
                                      fontSize: 13.w,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h,),
                              Text(AppText.addCoverImage,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Container(
                                width: 120.w,
                                height: 100.w,
                                padding: EdgeInsets.all(40.w),
                                decoration: BoxDecoration(
                                  color: AppColors.greenF3,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Image.asset("assets/slices/Union.png")
                              ),
                              SizedBox(height: 20.h,),
                              Text(AppText.addStepContent,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(20.w),
                                  decoration: BoxDecoration(
                                    color: AppColors.greenF3,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child:
                                      Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(30.w),
                                            decoration: BoxDecoration(
                                              color: AppColors.white,
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child:
                                            Container(
                                                padding: EdgeInsets.all(10.w),
                                                decoration: BoxDecoration(
                                                  color: AppColors.greenF3,
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                                child:
                                                Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Image.asset("assets/slices/Union.png",width: 20,),
                                                    SizedBox(width: 10.w,),
                                                    Text(AppText.addStepContent,style: TextStyle(
                                                      color: AppColors.greyD9,
                                                      fontWeight: FontWeight.bold,


                                                    ),),
                                                  ],
                                                )
                                            ),
                                          ),
                                        ],
                                      )

                              ),
                              SizedBox(height: 100.h,),
                              InkWell(
                                child:
                                Container(
                                  alignment: Alignment.center,

                                  padding: EdgeInsets.symmetric(vertical: 18.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.w),
                                    color: AppColors.black33,
                                  ),
                                  child:
                                  Text(AppText.uploadAction,style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              )

                            ],
                          ),
                        )

                      ],
                    )
                )
                )

              ],
            )

    );
  }
}