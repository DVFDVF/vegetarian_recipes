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

class HomeItem extends StatefulWidget {
  const HomeItem({super.key});

  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {

  @override
  Widget build(BuildContext context) {
    return Container(

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
              Text(AppText.appDiscoverEventTitle,style: TextStyle(fontSize: 11.h,fontWeight: FontWeight.bold),),
            ),

          ],
        )


    );
  }
}