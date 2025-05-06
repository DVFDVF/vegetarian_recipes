import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/collect/collectItem.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class Collect extends StatefulWidget {
  const Collect({super.key});

  @override
  _CollectState createState() => _CollectState();
}

class _CollectState extends State<Collect> {
final List<String> items = ["","","","","","","","","","",];

  @override
  Widget build(BuildContext context) {
    final screenWidth =  MediaQuery.of(context).size.width;
    return Scaffold(
        body:
        Container(
            padding: EdgeInsets.only(left: 15.h,right: 15.h),
            child:
            ListView(
              children: [
                Wrap(
                  spacing: 10.w,
                  runSpacing: 0,
                  children: items.map((item) {
                    return SizedBox(
                      width: (screenWidth - 60.w) / 3,
                      child:  CollectItem(),
                    );
                    return CollectItem();
                  }).toList(),
                ),






              ],
            )
        )

    );
  }
}