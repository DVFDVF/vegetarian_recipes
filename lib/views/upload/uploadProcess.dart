import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/upload/uploadOk.dart';

class UploadProcess extends StatefulWidget {
  final StepItem step;
  const UploadProcess({super.key,  required this.step});

  @override
  _UploadProcessState createState() => _UploadProcessState();
}

class _UploadProcessState extends State<UploadProcess> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,

        child:
        ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.h),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius:BorderRadius.circular(9.h),
                  ),
                  child:
                  Image.asset(widget.step.iconPath,width: 30.h,),
                ),
                SizedBox(height: 10.h,),
                Text(widget.step.text,
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.greyBD,
                    fontWeight: FontWeight.bold
                  ),

                ),

              ],
            ),
          ]
        )
      );
  }
}