import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class SolarTerms extends StatefulWidget {
  final String text;
  final Color color;
  final Color backColor;
  const SolarTerms({super.key, required this.text, required this.color, required this.backColor});

  @override
  _SolarTermsState createState() => _SolarTermsState();
}

class _SolarTermsState extends State<SolarTerms> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        decoration: 
        BoxDecoration(
          color: widget.backColor,
          borderRadius: BorderRadius.circular(7.h),
        ),
        child:
        Text(widget.text,
          style: TextStyle(
            fontSize: 13.h,
            fontWeight: FontWeight.bold,
            color: widget.color,
            ),

        ),


      );
  }
}