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
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class MyTime extends StatefulWidget {
  const MyTime({super.key});

  @override
  _MyTimeState createState() => _MyTimeState();
}

class _MyTimeState extends State<MyTime> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.h),
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
                      ShaderText(text: AppText.recipeSubmissionTitle, fontSize: 17.h),
                      SizedBox(width: 3.w,),
                      ShaderText(text: AppText.welcomeSubmissionTitle, fontSize: 12.h),

                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.greyF9, // 0%
                          AppColors.greenF7, // 100%
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("松桂炊玉粒，素心映清辉",
                            style: TextStyle(fontSize: 14.h,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black17),),
                          SizedBox(height: 7.w,),
                          Text(
                            "如果您有特别的素食独门秘方，自创菜谱，家传菜谱，或是任何植物基相关菜谱。真诚邀请分享到这里，让更多素食者看到共同经历素生活的美好。我们将会根据投稿菜谱的受欢迎度来选出每期（每月1期）共5位分享者，赠送大树食谱终生VIP会员（后续版本自动升级为终生会员）"
                            ,
                            style: TextStyle(fontSize: 11.h,
                                fontWeight: FontWeight.normal,

                                color: AppColors.grey7D),),
                          SizedBox(height: 20.w,),
                          Container(
                            width: 100.w,
                            height: 35.h,
                            child:
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Add()),
                                );
                              },
                                child: BackShaderDeText(text: AppText.gotoSubmissionTitle, borderRadius: null,),

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