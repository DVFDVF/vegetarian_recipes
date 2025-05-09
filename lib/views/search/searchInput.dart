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
import 'package:vegetarian_recipes/views/search/search.dart';
import 'package:vegetarian_recipes/views/search/searchPage.dart';

class SearchInput extends StatefulWidget {
  final TextEditingController? controller;
  const SearchInput({super.key, this.controller} );

  @override
  _SearchInputState createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {



  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 35.h,
        decoration: BoxDecoration(
          color: AppColors.greyF3,
          borderRadius: BorderRadius.circular(11.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/slices/搜索.png", height: 17.h, width: 17.h),
            SizedBox(width: 10.h),
            Expanded(
              child: TextField(
                controller: widget.controller,
                autofocus: true,
                maxLines: 1,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: AppText.searchHint,
                  hintStyle: TextStyle(
                    color: AppColors.greyBD,
                    fontSize: 13.h,
                    fontWeight: FontWeight.bold,
                  ),
                  border: InputBorder.none,
                  isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                ),
                style: TextStyle(
                  fontSize: 13.h,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
  }
}