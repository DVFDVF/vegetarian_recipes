import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class UploadProcess extends StatefulWidget {
  final String text;
  const UploadProcess({super.key, required this.text});

  @override
  _UploadProcessState createState() => _UploadProcessState();
}

class _UploadProcessState extends State<UploadProcess> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,

        decoration:
        BoxDecoration(
          color: AppColors.greyF5,
          borderRadius:BorderRadius.circular(15.h),
        ),
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child:
              Image.asset("name"),
            ),

            Text(widget.text,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.greyBD,
              ),

            ),
            )
          ],
        ),
      );
  }
}