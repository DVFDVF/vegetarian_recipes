import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/appBar/appBar.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/upload/uploadProcess.dart';

class UploadOk extends StatefulWidget {
  const UploadOk({super.key});

  @override
  _UploadOkState createState() => _UploadOkState();
}
class _UploadOkState extends State<UploadOk> {
  final List<StepItem> steps = const [
    StepItem(
      text: AppText.processStep1,
      iconPath: "assets/slices/上传.png",
    ),
    StepItem(
      text: AppText.processStep2,
      iconPath: "assets/slices/待审核.png",
    ),
    StepItem(
      text: AppText.processStep3,
      iconPath: "assets/slices/审核通过.png",
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        appBar:CustomAppBar(title: "",),
        body:

        Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child:
            Container(
              alignment: Alignment.center,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset("assets/slices/菜谱编辑_选中@3x.png",height: 150.h,),
                  SizedBox(height: 40.h,),
                  Text(AppText.uploadSuccess,
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColors.black,
                      fontWeight: FontWeight.bold
                    ),

                  ),
                  SizedBox(height: 10.h,),
                  Container(
                    alignment: Alignment.center,
                    width: 300.w,
                    child:  Text(AppText.pendingApprovalMessage,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16.h,
                        color: AppColors.greyBD,
                        fontWeight: FontWeight.bold,

                      ),

                    ),
                  ),

                  SizedBox(height: 40.h,),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.greyF3,
                      borderRadius:BorderRadius.circular(9.h),
                    ),
                    padding: EdgeInsets.all(20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppText.processTitle,
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold
                          ),

                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: steps.length,crossAxisSpacing: 10.h,mainAxisSpacing: 10.h,mainAxisExtent: 80.h,),
                          itemCount: steps.length,
                          itemBuilder: (context, index) => UploadProcess(step: steps[index]),
                        ),


                      ],
                    ),
                  )
                ],
              ),
            )
        )

      );


  }
}