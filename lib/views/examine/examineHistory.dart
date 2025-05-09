import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';

class ExamineHistory extends StatefulWidget {
  final ExamineHistoryModel model;
  final bool isSelected;

  const ExamineHistory({
    super.key,
    required this.model,
    this.isSelected = false,
  });

  @override
  _ExamineHistoryState createState() => _ExamineHistoryState();
}

class _ExamineHistoryState extends State<ExamineHistory> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20.h),
        decoration: BoxDecoration(
            color: AppColors.greyF3,
            borderRadius: BorderRadius.circular(11.h)
        ),
        child:
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 左图：决定整体高度
                    Container(
                      margin: EdgeInsets.only(right: 10.h),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.h),
                      ),
                      child: Image.network(
                        widget.model.imagePath,
                        width: 100.h,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // 右侧内容
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 标题 + 状态
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.model.title,
                                  style: TextStyle(
                                    fontSize: 18.h,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.black40,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(vertical: 7.h),
                                decoration: BoxDecoration(
                                  color: examineType(widget.model.status).backColor,
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                                width: 70.h,
                                child: Text(
                                  examineType(widget.model.status).text,
                                  style: TextStyle(
                                    fontSize: 11.h,
                                    fontWeight: FontWeight.bold,
                                    color: examineType(widget.model.status).color,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),

                          // 描述
                          Text(
                            widget.model.description,
                            style: TextStyle(
                              fontSize: 11.h,
                              color: AppColors.black17,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 20.h),

                          // 底部选中按钮

                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child:
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11.h),
                        border: Border.all()
                      ),
                      child:
                      Image.asset(
                        "assets/slices/菜谱编辑_${widget.isSelected ? "" : "未"}选中.png",
                        width: 20.h,
                      ),

                  ),
                ),
              ],
            )



    );
  }
}