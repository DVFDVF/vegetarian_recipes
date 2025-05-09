
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/configuration%20/app_text.dart';
import 'package:vegetarian_recipes/text/noText.dart';
import 'package:vegetarian_recipes/views/add/addContent.dart';
import 'package:vegetarian_recipes/views/add/addContentItem.dart';
import 'package:vegetarian_recipes/views/appBar/appBar.dart';
import 'package:vegetarian_recipes/views/examine/Examine.dart';
import 'package:vegetarian_recipes/views/examine/examineHistory.dart';
import 'package:vegetarian_recipes/views/upload/uploadOk.dart';


class Add extends StatefulWidget {
  const Add({super.key});

  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final List<String> ingredients = [
    '鸡蛋',
    '牛奶',
    '面粉',
    '白糖',
  ];
  final ImagePicker _picker = ImagePicker();

  List<Recipe> recipes = [];
   final Cookbook cookbook = Cookbook(name: "", title: "", images: [], recipe: []);
  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (pickedFile != null) {
      setState(() {
        cookbook.images.add(pickedFile);

      });
    }
  }
  void addData(){

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>
          AddContent(recipe: null,
            onSubmit:
                (recipe){
                  cookbook.recipe.add(recipe);
            },
          )),
    );
  }
  void _update() {

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>
          UploadOk()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: AppText.recipeSubmissionTitle,
          action:    InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>
                    Examine()),
              );
            },
            child: Image.asset("assets/slices/审核记录.png",width: 20.w,),
          ),

        ),

        body:
            Column(
              children: [
                Expanded(child:
                Container(
                  padding: EdgeInsets.only(left: 15.h,right: 15.h,),
                    child:
                    ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppText.recipeNameHint,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: AppColors.greenF3,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: AppText.recipeNameEmptyWarning,
                                    hintStyle: TextStyle(
                                      color: AppColors.greyBD,
                                      fontSize: 13.w,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h,),
                              Text(AppText.addCoverImage,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Wrap(
                                spacing: 10.w,
                                runSpacing: 10.w,
                                children: [
                                  // 已添加的图片
                                  ...cookbook.images.asMap().entries.map((entry) {
                                    final index = entry.key;
                                    final file = entry.value;

                                    return Dismissible(
                                      key: ValueKey(file.path),
                                      direction: DismissDirection.endToStart,
                                      onDismissed: (_) {
                                        setState(() {
                                          cookbook.images.removeAt(index);
                                        });
                                      },
                                      background: Container(
                                        // color: Colors.red,
                                        alignment: Alignment.centerRight,
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: Icon(Icons.delete, color: Colors.black),
                                      ),
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width - 60.w) / 3,
                                        height: (MediaQuery.of(context).size.width - 40.w) / 4,
                                        decoration: BoxDecoration(
                                          color: AppColors.greenF3,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Image.file(
                                          File(file.path),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  }),

                                  // 添加按钮
                                  GestureDetector(
                                    onTap: _pickImage,
                                    child: Container(
                                      width: (MediaQuery.of(context).size.width - 60.w) / 3,
                                      height: (MediaQuery.of(context).size.width - 60.w) / 4,
                                      padding: EdgeInsets.all(30.w),
                                      decoration: BoxDecoration(
                                        color: AppColors.greenF3,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset("assets/slices/Union.png"), // 添加图片图标
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(height: 20.h,),
                              Text(AppText.addStepContent,style: TextStyle(
                                  color: AppColors.black17,
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 20.h,),
                              Container(
                                height: 300.h, // 固定高度
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(20.w),
                                decoration: BoxDecoration(
                                  color: AppColors.greenF3,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: SingleChildScrollView(
                                        child: Wrap(
                                          spacing: 10.w,
                                          runSpacing: 10.h,
                                          children: cookbook.recipe.asMap().entries.map((entry) {
                                            int index = entry.key;
                                            Recipe item = entry.value;
                                            return Dismissible(
                                              key: ValueKey(item.title + index.toString()),
                                              direction: DismissDirection.endToStart,
                                              background: Container(
                                                alignment: Alignment.centerRight,
                                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                                child: Icon(Icons.delete, color: AppColors.black17),
                                              ),
                                              onDismissed: (direction) {
                                                setState(() {
                                                  cookbook.recipe.removeAt(index);
                                                });
                                                ScaffoldMessenger.of(context).showSnackBar(
                                                  SnackBar(content: Text('${item.title} 已删除')),
                                                );
                                              },
                                              child: AddContentItem(recipe: item),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    InkWell(
                                      onTap: addData,
                                      child:
                                      Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(10.w),
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(10.w),
                                          decoration: BoxDecoration(
                                            color: AppColors.greenF3,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset("assets/slices/Union.png", width: 20),
                                              SizedBox(width: 10.w),
                                              Text(
                                                AppText.addStepContent,
                                                style: TextStyle(
                                                  color: AppColors.greyD9,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(6.h),
                                child: Text("左滑可删除数据",style: TextStyle(
                                  color: AppColors.greyC7,
                                  fontSize: 11.h,
                                  fontWeight: FontWeight.bold
                                ),),
                              ),


                              SizedBox(height: 50.h,),
                              InkWell(
                                onTap: _update,
                                child:
                                Container(
                                  alignment: Alignment.center,

                                  padding: EdgeInsets.symmetric(vertical: 18.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.w),
                                    color: AppColors.black33,
                                  ),
                                  child:
                                  Text(AppText.uploadAction,style: TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              )

                            ],
                          ),
                        )

                      ],
                    )
                )
                )

              ],
            )

    );
  }
}