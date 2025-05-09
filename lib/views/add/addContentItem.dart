
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';


class AddContentItem extends StatefulWidget {
  final Recipe recipe;
  const AddContentItem({super.key, required this.recipe});

  @override
  _AddContentItemState createState() => _AddContentItemState();
}

class _AddContentItemState extends State<AddContentItem> {
  @override
  Widget build(BuildContext context) {
    return

      Container(
     
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(7.h),
        ),
        padding: EdgeInsets.all(10), // 建议加内边距
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // 保证顶部对齐
          children: [
            Image.file(
              File( widget.recipe.imageUrls.isNotEmpty ? widget.recipe.imageUrls.first.path : '',),
              width: 100,
            ),
            SizedBox(width: 10), // 图片和文字之间留空
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // 文字左对齐
                children: [
                  Text(
                    widget.recipe.title,
                    softWrap: true,
                    style: TextStyle(
                      color: AppColors.black29,
                      fontWeight: FontWeight.bold,
                      fontSize: 11.h,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color:AppColors.greyF3,
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                    padding: EdgeInsets.all(5.h),
                    child:
                    Text(
                      "步骤一",
                      softWrap: true,
                      style: TextStyle(
                        color: AppColors.grey8D,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.h,
                      ),
                    ),
                  )

                ],
              ),
            )
          ],
        ),
      );

  }
}