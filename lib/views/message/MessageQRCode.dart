import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/appBar/appBar.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class MessageQRCode extends StatefulWidget {
  const MessageQRCode({super.key});

  @override
  _MessageQRCodeState createState() => _MessageQRCodeState();
}

class _MessageQRCodeState extends State<MessageQRCode> {



  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        appBar: CustomAppBar(title: AppText.appDiscoverEventAction),
          body:
          Container(
              child:
              ListView(
                children: [
                  Stack(
                    children: [

                      Column(
                        children: [
                          SizedBox(height: 50.h,),
                          Container(

                            color: AppColors.greyF3,
                            padding: EdgeInsets.all(40.h),
                            margin: EdgeInsets.all(20.h),

                            child: Column(
                              children: [

                                Image.network("https://img2.baidu.com/it/u=3861639160,3247931254&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667"),
                                SizedBox(height: 20.h,),
                                Text(AppText.vegetarianEventScanPrompt,style: TextStyle(fontSize: 24.h,fontWeight: FontWeight.bold,)),
                                SizedBox(height: 20.h,),
                                Container(
                                  width: 200.h,
                                  child:
                                  Text(
                                      AppText.vegetarianEventScanDescription,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15.h,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.greyBD)
                                  ),
                                )

                              ],
                            ),
                          ),
                          Text(AppText.vegetarianEventScanFailNote,style: TextStyle(fontSize: 15.h,fontWeight: FontWeight.bold,color: AppColors.greyBD)),





                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: ()=>{

                              },
                              child:
                              Container(
                                width: 40.w,
                                child: Image.asset("assets/slices/返回.png"),
                              )

                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
          )

      );
  }
}