import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NavHeader extends StatelessWidget {
  final Widget? left;
  final Widget? center;
  final Widget? right;

  const NavHeader({
    Key? key,
    this.left,
    this.center,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          // 左边内容
          left ?? SizedBox(width: 40.w),

          // 中间内容占满空间居中
          Expanded(
            child: Center(
              child: center ?? SizedBox(),
            ),
          ),

          // 右边内容
          right ?? SizedBox(width: 40.w),
        ],
      ),
    );
  }
}

