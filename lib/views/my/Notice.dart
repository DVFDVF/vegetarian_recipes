import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/appBar/appBar.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/my/myAdd.dart';
import 'package:vegetarian_recipes/views/my/myItem.dart';
import 'package:vegetarian_recipes/views/my/myTime.dart';
import 'package:vegetarian_recipes/views/setting/setting.dart';

class Notice extends StatefulWidget {
  const Notice({super.key});

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  void setting(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Setting()),
    );
  }
  void message(){

  }
  void clickItem(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "消息",
        ),
        body:
        Container(
          alignment: Alignment.center,
            child:
            Text("还没有收到消息通知哦",style: TextStyle(fontSize: 15.h,fontWeight: FontWeight.w500,color: AppColors.black17),),
        )

    );
  }
}