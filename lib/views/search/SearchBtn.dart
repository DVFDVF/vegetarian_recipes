import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/search/search.dart';
import 'package:vegetarian_recipes/views/search/searchPage.dart';

class SearchBtn extends StatefulWidget {
  final String text;
  final Color color;
  final Color backColor;
  const SearchBtn({super.key, required this.text, required this.color, required this.backColor});

  @override
  _SearchBtnState createState() => _SearchBtnState();
}

class _SearchBtnState extends State<SearchBtn> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10.h,right: 10.h),
          decoration:
          BoxDecoration(
            color: widget.backColor,
            borderRadius: BorderRadius.circular(11.h),
          ),
          height: 35,
          child:
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/slices/搜索.png", height: 17.h, width: 17.h),
              SizedBox(width: 10.h),
              Expanded(
                child: SizedBox(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(SearchPageRoute());
                    },
                    child: Text(widget.text,style: TextStyle(
                      color:  widget.color,
                      fontSize: 13.h,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ),
            ],
          )


      );
  }
}