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
import 'package:vegetarian_recipes/views/my/myItem.dart';

class My extends StatefulWidget {
  const My({super.key});

  @override
  _MyState createState() => _MyState();
}

class _MyState extends State<My> {
  void setting(){
    
  }
  void message(){

  }
  void clickItem(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(

            child:
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top:10.h,left: 15.h,right: 15.h,bottom: 40.h),
                  color: AppColors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: setting,
                            child:
                            Container(
                              width: 40.w,

                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                  color: AppColors.greyF3,
                                  borderRadius: BorderRadius.circular(11.h)
                              ),
                              child: Image.asset("assets/slices/设置.png"),
                            )

                          ),
                          InkWell(
                            onTap: setting,
                            child:  Container(
                              width: 40.w,

                              padding: EdgeInsets.all(10.w),
                              decoration: BoxDecoration(
                                  color: AppColors.greyF3,
                                  borderRadius: BorderRadius.circular(11.h)
                              ),
                              child: Image.asset("assets/slices/消息.png"),
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 25.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("清蒸素鲶鱼—M与HSAAI",style: TextStyle(fontSize: 20.h,fontWeight: FontWeight.bold,color: AppColors.black),),
                              SizedBox(height: 15,),
                              Text("人世间，唯有爱与美食不可辜负",style: TextStyle(fontSize: 13.h,fontWeight: FontWeight.normal,color: AppColors.greyA8),),
                              Text("IP属地：四川成都",style: TextStyle(fontSize: 13.h,fontWeight: FontWeight.normal,color: AppColors.greyA8),),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12), // 圆角半径
                            child:
                            Image.network(
                              "http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",
                              fit: BoxFit.fill,
                              width: 100.w,
                              height: 80.w,

                            ),
                          ),


                        ],
                      )



                    ],
                  ),
                ),
                Container(
                  color:  AppColors.greyF1,
                  height: 10.h,
                ),
                Container(
                  color:  AppColors.white,
                  padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                  child:  MyItem(),
                )


              ],
            )
        )

    );
  }
}