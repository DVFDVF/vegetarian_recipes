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
import 'package:vegetarian_recipes/views/search/dish.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';
import 'package:vegetarian_recipes/views/search/solarTerms.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {



  @override
  Widget build(BuildContext context) {
    return    Container(
        padding: EdgeInsets.only(left: 15.h,right: 15.h,top: 10.h),
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text("节气分类",
              style: TextStyle(
                fontSize: 13.h,
                fontWeight: FontWeight.bold,
                color: AppColors.greyBD,
              ),

            ),
            SizedBox(height: 20.h,),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,crossAxisSpacing: 10.h,mainAxisSpacing: 10.h,mainAxisExtent: 35.h,),
              itemCount: 20,
              itemBuilder: (context, index) => SolarTerms(text: "春分", color:AppColors.greenF90,backColor: AppColors.green90,),
            ),

            SizedBox(height: 20.h,),
            Text("节气分类",
              style: TextStyle(
                fontSize: 13.h,
                fontWeight: FontWeight.bold,
                color: AppColors.greyBD,
              ),

            ),
            SizedBox(height: 20.h,),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5 ,crossAxisSpacing: 10.h,mainAxisSpacing: 10.h,mainAxisExtent: 35.h,),
              itemCount: 20,
              itemBuilder: (context, index) => Dish(image: "https://img0.baidu.com/it/u=2283918562,1184992500&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500", text: "面"),
            ),

          ],
        )
    );
  }
}