import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;
  final Widget? action;
  final Widget? left;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.onBack,
    this.action, this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leading: left ?? IconButton(
        icon: Icon(Icons.arrow_back_ios,weight: 30.h,),
        onPressed: onBack ?? () => Navigator.pop(context),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        if (action != null) Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: action!,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
