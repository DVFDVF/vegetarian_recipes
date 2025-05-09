import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';

class HomeHot extends StatefulWidget {
  const HomeHot({super.key});

  @override
  _HomeHotState createState() => _HomeHotState();
}

class _HomeHotState extends State<HomeHot> {
  final items = ["",'',''];

  @override
  Widget build(BuildContext context) {
    return
      Container(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            height: 300.h,
            child:  Swiper(
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12.w),
                  child:  HomeTopImageItemView(),
                );
              },
              itemCount: 10,
              autoplay: true,
              viewportFraction: 0.9,
              scale: 0.95,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15.h,top: 10.h),
            alignment: Alignment.topLeft,
            child:
            Text(AppText.appHomeMoreDelicacies,style: TextStyle(fontSize: 22.h,fontWeight: FontWeight.bold),),

          ),
          SizedBox(height: 15.h,),

          HorizontalScollView(),
          Container(
            padding: EdgeInsets.only(left: 15.h,top: 10.h),
            alignment: Alignment.topLeft,
            child:
            Text(AppText.appHomeFeatured,style: TextStyle(fontSize: 22.h,fontWeight: FontWeight.bold),),

          ),
          SizedBox(height: 15.h,),
          for (var item in items) ...[
            Container(
              padding: EdgeInsets.only(left: 15.h,right: 15,top: 10.h),
              child:
              InkWell(
                onTap: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeContent()),
                  )
                },
                child:
                HomeTopImageItemView(),
              ),
            ),

            SizedBox(height: 15,),
          ],

          // Evaluate(),
        ],
      ),
    );
  }
}