import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/add/add.dart';
import 'package:vegetarian_recipes/views/date/date.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class MyAdd extends StatefulWidget {
  const MyAdd({super.key});

  @override
  _MyAddState createState() => _MyAddState();
}

class _MyAddState extends State<MyAdd> {

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: BoxDecoration(
            color: AppColors.black33,
            borderRadius: BorderRadius.circular(11.h)
        ),
        child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15.h),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShaderText(text: AppText.recipeSubmissionTitle , fontSize: 17.h),
                  ShaderText(text: "${AppText.submissionTitleTime}2025-11-11", fontSize: 11.h),

                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.greyF9, // 0%
                      AppColors.greyF6, // 100%
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8.w)
              ),
              child:
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15.h),
                child:
                    Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppText.vegetarianTimeTitle,
                        style: TextStyle(fontSize: 13.h,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black17),),
                      SizedBox(height: 7.w,),
                      Row(
                        children: [

                          Text("2000",
                            style: TextStyle(fontSize: 32.h,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black17),),
                          SizedBox(width: 3.h,),
                          Text(
                            AppText.vegetarianDurationUnit
                            ,
                            style: TextStyle(fontSize: 11.h,
                                fontWeight: FontWeight.normal,

                                color: AppColors.grey7D),),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PickerDate()),
                      );
                    },
                     child:
                     Container(
                       padding: EdgeInsets.all(10.h),

                       decoration: BoxDecoration(
                           color: AppColors.greyA4,
                           borderRadius: BorderRadius.circular(6.h)
                       ),
                       child:
                       Image.asset("assets/slices/设置.png",width: 15.h,),
                     )
                  )


                ],
                ),

              ),
            )
          ],
        )


    );
  }
}