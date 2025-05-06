import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vegetarian_recipes/configuration%20/app_colors.dart';
class NoText extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? backColor;
  final FontWeight? fontWeight;
  final double? circular;
  final EdgeInsetsGeometry ? padding;
  final double? fontSize;
  const NoText({
    Key? key,
    required this.text,
    required this.color,
    required this.backColor,
    required this.fontWeight,
    required this.circular,
    required this.padding,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    Container(
      // color:  backColor ?? const Color(0x00000000),
    padding: padding ?? EdgeInsets.symmetric(horizontal: 0, vertical: 0), // 文字间距
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(circular ?? 13),
      color: backColor ?? const Color(0x00000000)

    ),
  child: (
      Text(
        text,
        style:
        TextStyle(
          fontSize: fontSize ?? 13,
          fontWeight: fontWeight ?? FontWeight.normal,
          color: color ?? Colors.black54,


        ),
      )
  )
  );

  }
}
class TabText extends NoText {
  final bool isSelected;
  final String text;

  TabText({
    required this.isSelected,
    required this.text,
    FontWeight fontWeight = FontWeight.bold,
    double circular = 15.0,
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    double fontSize = 12.0,
  }) : super(
    text: text,
    color: isSelected  ? Colors.white
      : Colors.black54,
    backColor: isSelected ? Colors.black
        : Color(0x00000000),
    fontWeight: fontWeight,
    circular: circular,
    padding: padding,
    fontSize: fontSize,
  );
}


class ShaderText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [Colors.blue, Colors.red],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ).createShader(bounds);
        },
        blendMode: BlendMode.srcATop,
        child: Text(
          '渐变文字',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white, // 必须设置为白色
          ),
        ),
      );


  }
}


class BackShaderText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final EdgeInsets? padding;
  final double? circular;
  const BackShaderText({
    super.key,
    required this.text, required this.fontWeight, required this.padding,required this.circular
  });
  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        padding: padding,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFC5FFE4), // 0%
              Color(0xFFE2FFC7), // 100%
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),

          borderRadius: BorderRadius.circular(circular ?? 22.h)
        ),
        child: Text(text,style:TextStyle(
          fontWeight: fontWeight ?? FontWeight.w600,
          fontSize: 16.h,
            color: AppColors.green33

        ),),
      );


  }
}

class BackShaderDeText extends StatelessWidget {
  final String text;
  const BackShaderDeText({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFC5FFE4), // 0%
                Color(0xFFE2FFC7), // 100%
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(8.w)
        ),
        child: Text(text,style:TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.h,
            color: AppColors.green33

        ),),
      );


  }
}