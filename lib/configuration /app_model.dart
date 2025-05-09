
import 'dart:io';
import 'dart:ui';

import 'package:image_picker/image_picker.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';

class StepItem {
  final String text;
  final String iconPath;

  const StepItem({
    required this.text,
    required this.iconPath,
  });
}

class ExamineType {
  final Color backColor;
  final Color color;
  final String text;

  const ExamineType( {
    required this.backColor,required this.color,required this.text
  });
}
ExamineType  examineType(type){
   switch (type) {
   case 0:
     return   ExamineType( backColor:  AppColors.green58, color: AppColors.greenB33, text: AppText.okApproval
   );
   case 1:
     return   ExamineType( backColor:  AppColors.greyE6, color: AppColors.grey89, text: AppText.pendingApproval
     );
   }
   return   ExamineType( backColor:  AppColors.redEB, color: AppColors.red17, text: AppText.errorApproval
   );
}
class ExamineStatus {
  final String text;
  final Color backColor;
  final Color color;

  ExamineStatus({
    required this.text,
    required this.backColor,
    required this.color,
  });
}

class ExamineHistoryModel {
  final String title;        // 标题：如“美味五香豆腐皮”
  final String description;  // 简短说明
  final String imagePath;
  final int status;


  ExamineHistoryModel({
    required this.title,
    required this.description,
    required this.status,
    required this.imagePath,
  });
}
final List<ExamineHistoryModel> historyList = [
  ExamineHistoryModel(
    title: "美味五香豆腐皮",
    description: "先来个配料合集，照着准备就好。记得，所有配料都是左右...",
    imagePath: "https://i.imgur.com/m2BFRaG_d.webp?maxwidth=520&shape=thumb&fidelity=high", // 替换为实际图片链接
    status: 0, // 审核中
  ),
  ExamineHistoryModel(
    title: "清炒西兰花",
    description: "简单又健康，西兰花焯水后炒一下，加点蒜末更香。",
    imagePath: "https://i.imgur.com/ZHyrAk2_d.webp?maxwidth=520&shape=thumb&fidelity=high", // 替换为实际图片链接
    status: 1, // 已通过
  ),
  ExamineHistoryModel(
    title: "红烧茄子",
    description: "软糯入味的茄子，配饭绝了！控制好油量也能吃得健康。",
    imagePath: "https://i.imgur.com/WkqnXU3_d.webp?maxwidth=520&shape=thumb&fidelity=high", // 替换为实际图片链接
    status: 2, // 未通过
  ),
  ExamineHistoryModel(
    title: "香菇青菜",
    description: "香菇和青菜的经典搭配，爽口又鲜香，十分钟搞定。",
    imagePath: "https://i.imgur.com/4SWawuJ_d.webp?maxwidth=520&shape=thumb&fidelity=high", // 替换为实际图片链接
    status: 1,
  ),
  ExamineHistoryModel(
    title: "麻辣凉拌黄瓜",
    description: "夏日必备，黄瓜切片加蒜和辣椒油拌一拌，冰镇更爽口！",
    imagePath: "https://i.imgur.com/4SWawuJ_d.webp?maxwidth=520&shape=thumb&fidelity=high", // 替换为实际图片链接
    status: 0,
  ),
];



class Recipe {
  final String title;
  final List<XFile> imageUrls;

  Recipe({
    required this.title,
    required this.imageUrls,
  });
}
class Cookbook {
  final String name;
  final String title;
  final List<XFile> images;
  final List<Recipe> recipe;

  Cookbook( {
    required this.name,required this.title,required this.images,required this.recipe,
  });
}