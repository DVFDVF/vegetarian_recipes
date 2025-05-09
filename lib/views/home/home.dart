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
import 'package:vegetarian_recipes/views/examine/examineHistory.dart';
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/home/homeHot.dart';
import 'package:vegetarian_recipes/views/search/SearchBtn.dart';
import 'package:vegetarian_recipes/views/search/search.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = ["",'',''];
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
          padding: EdgeInsets.only(top: 20.h),
        color: AppColors.white,
        child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child:
              SearchBtn(text: AppText.searchHint, color: AppColors.greyBD, backColor: AppColors.greyF3),
            ),
            TopNav(onTabTapped: (index)=>{
              setState(() {
                _selectedIndex = index;
              })

            },),
            Expanded(child:
            ListView(
              children: [


                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      // PickerDate(),
                      IndexedStack(
                        index: _selectedIndex,
                        children: [
                          Search(),
                          HomeHot(),

                        ],
                      ),

                    ],
                  ),
                )

              ],
            )
            )

          ],
        )


      )

    );
  }
}