
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';


class AddContent extends StatefulWidget {
  const AddContent({super.key});

  @override
  _AddContentState createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
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
                                      Text(""),
                                      Text(AppText.stepUploadHint ,style: TextStyle(
                                          color: AppColors.black17,
                                          fontWeight: FontWeight.bold,
                                        fontSize: 20.w,

                                      ),),
                                      InkWell(
                                        child: Image.asset("assets/slices/取消.png",width: 25.w,),
                                      )

                                    ],
                                  )
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: AppColors.greenF3,

                              borderRadius: BorderRadius.circular(8),
                            ),
                            child:
                            Column(
                              children: [
                                TextField(
                                  maxLines: null,
                                  minLines: 4,
                                  decoration: InputDecoration(
                                    hintText: AppText.recipeNameEmptyWarning,
                                    hintStyle: TextStyle(
                                        color: AppColors.greyBD,
                                        fontSize: 13.w,
                                        fontWeight: FontWeight.bold
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text("1/200",style: TextStyle(
                                      color: AppColors.greyBD
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 20,),
                                DottedBorder(
                                  color: AppColors.grey9B,          // 虚线颜色
                                  strokeWidth: 1,               // 线条粗细
                                  dashPattern: [8, 4],          // 虚线模式：[线段长度, 间隔长度]
                                  borderType: BorderType.RRect, // 边框类型（圆角矩形）
                                  radius: Radius.circular(12),  // 圆角半径
                                  padding: EdgeInsets.all(16),  // 内边距
                                  child:   Container(
                                    alignment: Alignment.center,
                                      child:
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Image.asset("assets/slices/Union.png",width: 30,),
                                          SizedBox(height: 10.w,),
                                          Text(AppText.addImageAction,style: TextStyle(
                                            color: AppColors.greyBD,
                                            fontSize: 15.w,


                                          ),),
                                          SizedBox(height: 3.w,),
                                          Text(AppText.imageLimitNotice,style: TextStyle(
                                            color: AppColors.greyBD,
                                            fontSize: 12.w,



                                          ),),
                                        ],
                                      )
                                  )
                                ),
                                SizedBox(height: 100,),
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
                                    Text(AppText.completionAction,style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                )
                              ],
                            )

                          ),
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