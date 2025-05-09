import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_datetime_picker/flutter_cupertino_datetime_picker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/button/noBtn.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/nav/topNav.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/examine/examineHistory.dart';
import 'package:vegetarian_recipes/views/home/HomeContent.dart';
import 'package:vegetarian_recipes/views/home/evaluate.dart';
import 'package:vegetarian_recipes/views/home/homeHot.dart';
import 'package:vegetarian_recipes/views/search/search.dart';
import 'package:vegetarian_recipes/views/search/searchInput.dart';

class Examine extends StatefulWidget {
  const Examine({super.key});

  @override
  _ExamineState createState() => _ExamineState();
}

class _ExamineState extends State<Examine> {
  final Set<int> selectedIndexes = {};

  void toggleSelection(int index) {
    setState(() {
      if (selectedIndexes.contains(index)) {
        selectedIndexes.remove(index);
      } else {
        selectedIndexes.add(index);
      }
    });
  }

  void deleteSelectedItems() {
    setState(() {
      // 删除前先将选中的 index 按降序排序（避免索引错乱）
      final sortedIndexes = selectedIndexes.toList()..sort((a, b) => b.compareTo(a));
      for (final index in sortedIndexes) {
        historyList.removeAt(index);
      }
      selectedIndexes.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("审核记录"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: selectedIndexes.isNotEmpty ? deleteSelectedItems : null,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15.h, right: 15.h),
        color: AppColors.white,
        child: ListView.separated(
          itemCount: historyList.length,

          itemBuilder: (context, index) {
            final isSelected = selectedIndexes.contains(index);
            return GestureDetector(
              onTap: () => toggleSelection(index),
              child: ExamineHistory(
                model: historyList[index],
                isSelected: isSelected,
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 10.h),
        ),
      ),
    );
  }
}

