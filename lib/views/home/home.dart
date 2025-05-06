import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = ["",'',''];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          padding: EdgeInsets.only(left: 15.h,right: 15.h,top: 30.h),
        color: AppColors.white,
        child:
            ListView(
              children: [
                SearchInput(text: AppText.searchHint, color: AppColors.greyBD, backColor: AppColors.greyF3),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      // PickerDate(),
                      TopNav(),
                      SizedBox(height: 20,),
                      HomeTopImageItemView(),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        alignment: Alignment.topLeft,
                        child:
                        Text("精选",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

                      ),
                      SizedBox(height: 15,),
                      for (var item in items) ...[
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
                        SizedBox(height: 15,),
                      ],

                      // HorizontalScollView(),
                      // Container(
                      //   padding: EdgeInsets.only(top: 10),
                      //   alignment: Alignment.topLeft,
                      //   child:
                      //   Text("更多美味",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      //
                      // ),
                      // Evaluate(),
                    ],
                  ),
                )

              ],
            )
      )

    );
  }
}