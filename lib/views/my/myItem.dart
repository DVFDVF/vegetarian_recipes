import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class MyItem extends StatefulWidget {
  const MyItem({super.key});

  @override
  _MyItemState createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(23.h),

        decoration: BoxDecoration(
            color: AppColors.black33,
            borderRadius: BorderRadius.circular(11.h)
        ),
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppText.vegetarianDurationLabel,style: TextStyle(fontSize: 14.h,fontWeight: FontWeight.normal,color: Colors.white),),
                SizedBox(height: 7.w,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("390",style: TextStyle(fontSize: 26.h,fontWeight: FontWeight.normal,color: AppColors.white,height: 0.9.w),),
                    SizedBox(width: 3.w,),
                    Text(AppText.vegetarianDurationUnit,style: TextStyle(fontSize: 14.h,fontWeight: FontWeight.normal,color: AppColors.white),),
                  ],
                )


              ],
            ),
            Container(
              width: 120.w,
              height: 40.h,
              child:
              BackShaderDeText(text: AppText.vegetarianRecordLabel, borderRadius: null,),
            )


          ],
        )

    );
  }
}