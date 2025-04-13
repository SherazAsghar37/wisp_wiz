import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final double? wordSpacing;
  final FontStyle? fontStyle;
  final TextDecorationStyle? decorationStyle;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.decoration,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.letterSpacing,
    this.height,
    this.wordSpacing,
    this.fontStyle,
    this.decorationStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing: letterSpacing,
            height: height,
            wordSpacing: wordSpacing,
            fontStyle: fontStyle,
            decoration: decoration,
            decorationStyle: decorationStyle,
          ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
