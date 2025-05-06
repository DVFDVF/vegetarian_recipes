import 'package:flutter/material.dart';

class NoButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final BorderSide? side;
  final TextStyle? textStyle;

  const NoButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.foregroundColor,
    this.backgroundColor,
    this.borderRadius = 20.0,
    this.padding,
    this.elevation,
    this.side,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: child,

      style: TextButton.styleFrom(
        foregroundColor: foregroundColor ?? Colors.blue,
        backgroundColor: backgroundColor,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: side ?? BorderSide.none,
        ),
        textStyle: textStyle ?? Theme.of(context).textTheme.labelLarge,
      ),
    );
  }
}