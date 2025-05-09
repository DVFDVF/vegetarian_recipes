
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/message/messageJoin.dart';
class HorizontalPageView extends StatelessWidget {
  final List<String> imageUrls = [
    'http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips3.baidu.com/it/u=3557221034,1819987898&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips0.baidu.com/it/u=2254920273,941506475&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // 设置高度

      child: PageView.builder(
        scrollDirection: Axis.horizontal, // 横向滚动
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,

              ),
            ),
          );
        },
      ),
    );
  }
}

class HorizontalScollView extends StatefulWidget {  // 改为有状态组件
  @override
  _HorizontalScollView createState() => _HorizontalScollView();
}
class _HorizontalScollView extends State< HorizontalScollView>  {
  final List<String> imageUrls = [
    'http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips3.baidu.com/it/u=3557221034,1819987898&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips0.baidu.com/it/u=2254920273,941506475&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child:ListView.builder(
        scrollDirection: Axis.horizontal, // 横向滚动
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    imageUrls[index],
                    fit: BoxFit.cover,
                    height: 300,
                  ),
                ),
                SizedBox(height: 20,),
                Text("香酥可口！",style: TextStyle(color: Colors.black,fontSize: 13.h,fontWeight: FontWeight.bold),),
              ]

            )

          );
        },
      ),
    );
  }
}


class HorizontalPage1View extends StatelessWidget {
  final List<String> imageUrls = [
    'http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips3.baidu.com/it/u=3557221034,1819987898&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
    'http://gips0.baidu.com/it/u=2254920273,941506475&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Expanded(child:
      SizedBox(
       height: 200,
        child:ListView.builder(
          scrollDirection: Axis.vertical, // 横向滚动
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,

                ),
              ),
            );
          },
        ),
      ),
      );

  }
}

class HomeTopImageItemView extends StatefulWidget {  // 改为有状态组件
  @override
  _HomeTopImageItemViewState createState() => _HomeTopImageItemViewState();
}
class _HomeTopImageItemViewState extends State<HomeTopImageItemView> {
   bool isLike = false;
   void likeClick(){
   }
  @override
  Widget build(BuildContext context) {
    return
    Container(
      child:
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12), // 圆角半径
                        child:   Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",fit: BoxFit.fill),
                      ),

                      Container(
                          padding: EdgeInsets.all(20),

                          child:
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text("香酥可口！",style: TextStyle(color: Colors.white,fontSize: 14),),
                              Text("美味五香腐皮卷",style: TextStyle(color: Colors.white,fontSize: 17),),



                            ],
                          )
                      ),



                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(20),

                      child:
                      GestureDetector(
                          onTap: () => {
                            setState(() {
                              isLike = !isLike;
                            })

                          },
                          onLongPress: () => print('长按触发'),
                          child: Image.asset("assets/slices/收藏按钮_" + (!isLike ?  "未" : "") + "点击.png",width: 30,)
                      )
                  ),

                ],
              )

              // Container(
              //   padding: EdgeInsets.only(top: 10),
              //   alignment: Alignment.topLeft,
              //   child:
              //   Text("一口吃掉美味"),
              // )

            ],
          )
    );



  }
}
class HomeContentTopImageItemView extends StatefulWidget {  // 改为有状态组件
  @override
  _HomeContentTopImageItemViewState createState() => _HomeContentTopImageItemViewState();
}
class _HomeContentTopImageItemViewState extends State<HomeContentTopImageItemView> {
  bool isLike = false;
  void likeClick(){
  }
  @override
  Widget build(BuildContext context) {
    return
      Container(

          child:
          Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      ClipRRect(
                        child:   Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",fit: BoxFit.cover,height: 300.h,width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(20),

                      child:
                      GestureDetector(
                          onTap: () => {
                            setState(() {
                              isLike = !isLike;
                            })

                          },
                          onLongPress: () => print('长按触发'),
                          child: Image.asset("assets/slices/收藏按钮_" + (!isLike ?  "未" : "") + "点击.png",width: 30,)
                      )
                  ),

                ],
              )

              // Container(
              //   padding: EdgeInsets.only(top: 10),
              //   alignment: Alignment.topLeft,
              //   child:
              //   Text("一口吃掉美味"),
              // )

            ],
          )
      );



  }
}
class PlanItemView extends StatelessWidget {
  void customizedPlan(){

  }
  @override
  Widget build(BuildContext context) {
    return
      Container(
          padding: EdgeInsets.only(top: 20.h),
          child:
          Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.h),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    // 图片会自动根据内容自适应高度
                    Image.network(
                      "http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h,right: 10.h,bottom: 20.h),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50.h,
                        child:
                        InkWell(
                          onTap: ()=>{
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              isDismissible: true,
                              clipBehavior: Clip.antiAlias,

                              builder: (BuildContext context) {
                                return
                                  MessageJoin();

                              },
                            )




                        },
                          child: BackShaderText(text: AppText.appDiscoverEventJoin, fontWeight: null, padding: null, circular: null,),
                        )
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.h),
                alignment: Alignment.topLeft,
                child:
                Text(AppText.appDiscoverEventTitle,style: TextStyle(fontSize: 15.h,fontWeight: FontWeight.bold),),
              ),
              Container(
                padding: EdgeInsets.only(top: 3.h),
                alignment: Alignment.topLeft,
                child:
                Text(AppText.appDiscoverEventParticipants,style: TextStyle(fontSize: 14.h,fontWeight: FontWeight.normal),),
              )
            ],
          )
      );



  }
}



class StepItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            child:
                Stack(
            children: [
              Container(

                child:
                Stack(

                  alignment:  Alignment.bottomCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30.w,top: 15.w),
                      padding: EdgeInsets.only(left: 15.w,top: 30.w,right: 15.w),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.w)
                      ),
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.w), // 圆角半径
                        child:

                        Image.network("http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960"),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(left: 15.w,right: 15.w),
                      padding: EdgeInsets.all(20.w),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.w)
                      ),
                      child:
                      Text("1.先来个配料合集，照着准备就好。记得，所有配料都是左右，大概就好。生抽，老抽什么的看你喜好。",style: TextStyle(color: AppColors.greenB33,fontWeight: FontWeight.w600,fontSize: 12.w),),
                    )

                  ],
                ),
              ),


              Row(
                children: [
                  Container(
                    child:
                    BackShaderText(text:"步骤一", fontWeight: null, padding: EdgeInsets.only(top: 7.w,left: 20.w,right: 20.w,bottom: 7.w), circular: 7.w,),
                  ),

                ],
              ),
            ],
            )

          ),

        ],
      );

  }
}
class FoodIngredientsItemView extends StatelessWidget {
  final List<String> ingredients = [
    '鸡蛋',
    '牛奶',
    '面粉',
    '白糖',
    '盐',
    '酱油',
    '大蒜',
    '生姜',
    '洋葱',
    '辣椒',
    '胡萝卜',
    '土豆',
    '西红柿',
    '青椒',
    '白菜',
    '香菜',
    '牛肉',
    '猪肉',
    '鸡肉',
    '鱼',
    '虾',
    '豆腐',
    '香菇',
    '木耳',
    '粉丝',
    '米饭',
    '面条',
    '芝麻',
    '花生',
    '食用油',
    '醋',
    '蚝油',
  ];
  @override
  Widget build(BuildContext context) {
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          Container(
              padding: EdgeInsets.all(0),
              margin: EdgeInsets.all(0),
              child:
              Stack(
                children: [
                  Container(

                    child:
                    Stack(

                      alignment:  Alignment.bottomCenter,
                      children: [

                        Container(
                          margin: EdgeInsets.only(bottom: 30.w,top: 15.w),
                          padding: EdgeInsets.only(left: 15.w,top: 30.w,right: 15.w,bottom: 20.w),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(12.w)
                          ),
                          child:
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: ingredients.map((tag) {
                              return Container(
                                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: AppColors.greenED,
                                  borderRadius: BorderRadius.circular(7.w),
                                ),
                                child: Text(tag),
                              );
                            }).toList(),
                          ),
                        ),



                      ],
                    ),
                  ),


                  Row(
                    children: [
                      Container(

                        child:
                        BackShaderText(text:"步骤一", fontWeight: null, padding: EdgeInsets.only(top: 7.w,left: 20.w,right: 20.w,bottom: 7.w), circular: 7.w,),
                      ),

                    ],
                  ),
                ],
              )

          ),

        ],
      );

  }
}

class StepListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      height: 200,
      child:
      ListView.builder(
        scrollDirection: Axis.vertical, // 横向滚动
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: StepItemView(),
          );
        },
      ),
    );


  }
}