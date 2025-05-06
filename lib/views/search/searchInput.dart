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

class SearchInput extends StatefulWidget {
  final String text;
  final Color color;
  final Color backColor;
  const SearchInput({super.key, required this.text, required this.color, required this.backColor});

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {



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
        height: 50,
        child:
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/slices/搜索.png",height: 20.h,width: 20.h,),
            SizedBox(width: 10.h,),
            Expanded(child:
            TextField(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Search()),
                );
                // 在这里添加点击后的逻辑
              },
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(
                hintText: widget.text,
                hintStyle: TextStyle(
                    color: widget.color,
                    fontSize: 13.w,
                    fontWeight: FontWeight.bold
                ),
                border: InputBorder.none,
              ),
            ),
            )



          ],
        )


      );
  }
}