import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
class CollectItem extends StatefulWidget {
  const CollectItem({super.key});

  @override
  _PlanItemView createState() => _PlanItemView();
}
class _PlanItemView extends State<CollectItem> {
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
              Image.network(
                "http://gips1.baidu.com/it/u=8355271,1357180122&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",
                fit: BoxFit.fitWidth,
                width: double.infinity,

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
              ),

            ],
          )
      );



  }
}
