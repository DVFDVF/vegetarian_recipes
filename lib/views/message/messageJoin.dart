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
import 'package:vegetarian_recipes/views/message/MessageQRCode.dart';

class MessageJoin extends StatefulWidget {
  const MessageJoin({super.key});

  @override
  _MessageJoinState createState() => _MessageJoinState();
}

class _MessageJoinState extends State<MessageJoin> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        height:800.h,
          child:
              Stack(
                children: [

                  ListView(
                    children: [
                      Column(
                        children: [

                          Stack(
                            children: [
                              Image.network(
                                "https://img2.baidu.com/it/u=3861639160,3247931254&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=667",
                                fit: BoxFit.cover,
                                width: double.infinity, // 关键：拉伸填满宽度
                              ),
                            ],
                          ),


                          SizedBox(height: 40.h,),
                          Text(AppText.vegetarianEventTitle,style: TextStyle(fontSize: 20.h,fontWeight: FontWeight.bold,)),
                          Container(
                            padding: EdgeInsets.all(20.h),
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text(AppText.vegetarianEventDescriptionTtile,style: TextStyle(fontSize: 17.h,fontWeight: FontWeight.bold),),
                                SizedBox(height: 10.h,),
                                Text(AppText.vegetarianEventDescription,style: TextStyle(fontSize: 11.h,color: AppColors.grey7D),),
                                SizedBox(height: 60.h,),
                                InkWell(
                                  onTap: ()=>{
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => MessageQRCode()),
                                    )
                                  },
                                  child:
                                  Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.only(top: 10.h,bottom: 10.h,),
                                    decoration: BoxDecoration(
                                      color: AppColors.black,
                                      borderRadius: BorderRadius.circular(22.h),
                                    ),
                                    child:  Text(AppText.vegetarianEventAction,style: TextStyle(fontSize: 22.h,fontWeight: FontWeight.bold,color: AppColors.white),),
                                  ),
                                ),

                              ],),
                          ),



                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.all(18.h),
                      child: Image.asset("assets/slices/取消.png", width: 30.h),
                    ),
                  ),
                ],
              )
      );
  }
}