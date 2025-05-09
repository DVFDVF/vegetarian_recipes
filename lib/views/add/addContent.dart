import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vegetarian_recipes/ScrollView/scrollView.dart';
import 'package:vegetarian_recipes/configuration /app_colors.dart';
import 'package:vegetarian_recipes/configuration /app_text.dart';
import 'package:vegetarian_recipes/configuration%20/app_model.dart';
import 'package:vegetarian_recipes/text/noText.dart';

class AddContent extends StatefulWidget {
  final Recipe? recipe;
  final Function(Recipe)? onSubmit;

  const AddContent({
    Key? key,
    this.onSubmit, required this.recipe,
  }) : super(key: key);

  @override
  _AddContentState createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  final ImagePicker _picker = ImagePicker();
  List<XFile> _images = [];
  final TextEditingController _textController = TextEditingController();
  static const int _maxTextLength = 200;

  @override
  void initState() {
    super.initState();
    _images = widget.recipe?.imageUrls ?? [];
    _textController.text = widget.recipe?.title ?? '';
  }

  Future<void> _pickImage() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );
    if (pickedFile != null) {
      setState(() {
        _images.add(pickedFile);
      });
    }
  }



  void _handleSubmit() {
    if (widget.onSubmit != null) {
      widget.onSubmit!(Recipe(title: _textController.text, imageUrls: _images));
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(), // 点击空白处收起键盘
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: ListView(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(""),
                                    Text(
                                      AppText.stepUploadHint,
                                      style: TextStyle(
                                        color: AppColors.black17,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.w,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Image.asset(
                                        "assets/slices/取消.png",
                                        width: 25.w,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: AppColors.greenF3,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _textController,
                                  maxLength: _maxTextLength,
                                  maxLines: null,
                                  minLines: 4,
                                  decoration: InputDecoration(
                                    hintText: AppText.recipeNameEmptyWarning,
                                    hintStyle: TextStyle(
                                      color: AppColors.greyBD,
                                      fontSize: 13.w,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    border: InputBorder.none,
                                    counterText: '',
                                  ),
                                  onChanged: (_) {
                                    setState(() {});
                                  },
                                ),
                                Row(
                                  children: [
                                    Spacer(),
                                    Text(
                                      "${_textController.text.length}/$_maxTextLength",
                                      style: TextStyle(color: AppColors.greyBD),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Wrap(
                                  spacing: 10.w,
                                  runSpacing: 10.w,
                                  children: [
                                    ..._images.asMap().entries.map((entry) {
                                      final index = entry.key;
                                      final file = entry.value;

                                      return Dismissible(
                                        key: ValueKey(file.path),
                                        direction: DismissDirection.endToStart,
                                        onDismissed: (_) {
                                          setState(() {
                                            _images.removeAt(index);
                                          });
                                        },
                                        background: Container(
                                          alignment: Alignment.centerRight,
                                          padding: EdgeInsets.only(right: 10.w),
                                          child: Icon(Icons.delete, color: Colors.black),
                                        ),
                                        child: Container(
                                          width: (MediaQuery.of(context).size.width - 80.w) / 3,
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
                                    GestureDetector(
                                      onTap: _pickImage,
                                      child: DottedBorder(
                                        color: AppColors.grey9B,
                                        strokeWidth: 1,
                                        dashPattern: [8, 4],
                                        borderType: BorderType.RRect,
                                        radius: Radius.circular(12),
                                        padding: EdgeInsets.all(16),
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Image.asset("assets/slices/Union.png", width: 30),
                                              SizedBox(height: 10.w),
                                              Text(
                                                AppText.addImageAction,
                                                style: TextStyle(
                                                  color: AppColors.greyBD,
                                                  fontSize: 15.w,
                                                ),
                                              ),
                                              SizedBox(height: 3.w),
                                              Text(
                                                AppText.imageLimitNotice,
                                                style: TextStyle(
                                                  color: AppColors.greyBD,
                                                  fontSize: 12.w,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 100),
                                InkWell(
                                  onTap: _handleSubmit,
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(vertical: 18.w),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.w),
                                      color: AppColors.black33,
                                    ),
                                    child: Text(
                                      AppText.completionAction,
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
