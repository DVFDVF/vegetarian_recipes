
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';


class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
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
        Container(
            // padding: EdgeInsets.only(left: 15,right: 15),
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
                              height: 300.h,
                              child:
                              Swiper(
                                itemBuilder: (BuildContext context, int index) {
                                  return HomeContentTopImageItemView();
                                },
                                itemCount: 10,
                                autoplay: true,
                                viewportFraction: 1.0, // 每页占满宽度
                                scale: 1.0,            // 无缩放，确保全屏显示
                                pagination: SwiperPagination(
                                  alignment: Alignment.bottomCenter, // 控制位置
                                  margin: EdgeInsets.only(bottom: 12.0), // 控制偏移
                                  builder: DotSwiperPaginationBuilder(
                                    activeColor: Colors.white,
                                    color: Colors.red,
                                    size: 6.0,
                                    activeSize: 8.0,
                                  ),
                                ),
                              )
                          ),
                          Container(
                              padding: EdgeInsets.all(20),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Image.asset("assets/slices/返回.png",width: 20.w,),
                                  ),
                                  InkWell(
                                    child: Image.asset("assets/slices/更多.png",width: 20.w,),
                                  )

                                ],
                              )
                          ),
                        ],
                      ),






                      Text("美味五香腐皮卷",
                        style: TextStyle(
                            color: AppColors.black17,
                            fontSize: 25.w,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 8.w,),
                      Text("1K+收藏",
                        style: TextStyle(
                            color: AppColors.grey26,
                            fontSize: 14.w
                        ),
                      ),
                      SizedBox(height: 15.w,),
                      Row(
                        children: [
                          Container(
                            child:
                            BackShaderText(text:AppText.homeTip, fontWeight: null, padding: EdgeInsets.only(top: 7.w,left: 20.w,right: 20.w,bottom: 7.w), circular: 7.w,),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.w,),
                      Container(

                        padding: EdgeInsets.all(15.w),
                        decoration: BoxDecoration(
                          color: AppColors.greenF6,
                          borderRadius: BorderRadius.circular(11.w),
                        ),
                        child:
                        Text("尽量采用蒸、煮的方式制作腐皮卷，避免油炸或油煎，减少油脂摄入。蒸制的腐皮卷既能保留食材的营养成分，又更加清爽健康。如果喜欢酥脆口感，可使用空气炸锅，以少量油达到类似油炸的效果。",
                          style: TextStyle(
                            color: AppColors.greenB33,
                            fontSize: 12.w
                          ),
                        )
                      ),
                      GridView.count(
                        crossAxisCount: 4, // 每行4个
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        shrinkWrap: true, // 不滚动时加上
                        physics: NeverScrollableScrollPhysics(), // 禁止内部滚动
                        children: ingredients.map((item) {
                          return Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Image.asset("assets/slices/收藏.png",width: 25.w,),
                                Text("90分钟",style: TextStyle(
                                  fontSize: 11.w,
                                ),)
                              ],
                            )
                          );
                        }).toList(),
                      ),
                      FoodIngredientsItemView(),
                      StepItemView(),
                    ],
                  ),
                )

              ],
            )
        )

    );
  }
}