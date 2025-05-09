
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(

        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.h - MediaQuery.of(context).padding.top, // ✅ 设置高度
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Swiper(
                    itemBuilder: (context, index) => HomeContentTopImageItemView(),
                    itemCount: 10,
                    autoplay: true,
                    viewportFraction: 1.0,
                    scale: 1.0,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 12.0),
                      builder: DotSwiperPaginationBuilder(
                        activeColor: AppColors.white,
                        color: AppColors.greyFF,
                        size: 6.0,
                        activeSize: 8.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: AppColors.greenF58,
            title: SizedBox(),
            centerTitle: true,
            leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                alignment: Alignment.center,
                child:Image.asset("assets/slices/返回.png", width: 20.h, height: 20.h),
              )
            ),
            actions: [
              IconButton(
                icon: Image.asset("assets/slices/更多.png",width: 20.h,),
                onPressed: () {
                  // 设置按钮点击
                },
              ),
            ],
          ),

          // 正文内容放在 SliverList 中
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child:
                Container(
                  color: AppColors.greyFA,
                  child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.h,),
                      Text("美味五香腐皮卷",
                        style: TextStyle(
                          color: AppColors.black17,
                          fontSize: 25.w,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8.w),
                      Text("1K+收藏",
                        style: TextStyle(
                          color: AppColors.grey26,
                          fontSize: 14.w,
                        ),
                      ),
                      SizedBox(height: 15.w),
                      Row(
                        children: [
                          BackShaderText(
                            text: AppText.homeTip,
                            fontWeight: null,
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.w),
                            circular: 7.w,
                          ),
                        ],
                      ),
                      SizedBox(height: 20.w),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(15.w),
                        decoration: BoxDecoration(
                          color: AppColors.greenF6,
                          borderRadius: BorderRadius.circular(11.w),
                        ),
                        child: Text(
                          "尽量采用蒸、煮的方式制作腐皮卷，避免油炸或油煎，减少油脂摄入。蒸制的腐皮卷既能保留食材的营养成分，又更加清爽健康。如果喜欢酥脆口感，可使用空气炸锅，以少量油达到类似油炸的效果。",
                          style: TextStyle(
                            color: AppColors.greenB33,
                            fontSize: 12.w,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: List.generate(ingredients.length, (index) {
                          return Expanded( // ← 平均分配宽度
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10.h),
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(horizontal: 8.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center, // 水平居中内容
                                  children: [
                                    Image.asset("assets/slices/收藏.png", width: 25.w),
                                    SizedBox(width: 4.w), // 图标和文字间距
                                    Text("90分钟", style: TextStyle(fontSize: 11.w)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),

                      SizedBox(height: 20.h,),
                      FoodIngredientsItemView(),
                      Column(
                        children: List.generate(ingredients.length, (index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 20.h), // 控制每个 StepItemView 的间距
                            child: StepItemView(),
                          );
                        }),
                      ),


                    ],
                  ),
                )


              ),
            ]),
          ),
        ],
      ),
    );
  }

}