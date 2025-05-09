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
import 'package:vegetarian_recipes/views/message/messageJoin.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Container(
            padding: EdgeInsets.only(left: 15,right: 15),
            child:
            ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                      AppText.appDiscoverTitle,
                    style: TextStyle(
                      color: AppColors.black17,
                      fontSize: 20.h,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      TopNav(onTabTapped: (index)=>{

                      },),
                      PlanItemView(),
                      PlanItemView(),
                      PlanItemView(),

                    ],
                  ),
                )

              ],
            )
        )

    );
  }
}