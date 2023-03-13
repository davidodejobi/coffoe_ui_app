import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension AddImage on String {
  Widget addImage() {
    return Image.asset('assets/images/$this.jpeg');
  }

  Widget addImageWithSize({double size = 0.0}) {
    return Image.asset(
      'assets/images/$this.jpeg',
      height: size,
      width: size,
    );
  }
}

extension AddSvgImage on String {
  Widget addSvgImage() {
    return SvgPicture.asset(
      'assets/svgs/$this.svg',
      semanticsLabel: 'SVG Image',
      height: 24,
      width: 24,
    );
  }

  Widget addSvgImageWithSize({double size = 0.0}) {
    return SvgPicture.asset(
      'assets/svgs/$this.svg',
      semanticsLabel: 'SVG Image',
      height: size,
      width: size,
    );
  }
}

extension ToLocalDateTime on String {
  DateTime toLocalDateTime() {
    DateTime dateTime = DateTime.parse(this).toLocal();
    return dateTime;
  }
}

extension CapitalizeFirst on String {
  String capitalizeFirst() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

extension TextExtension on String {
  Text addText(
    BuildContext context, {
    Color? color = Colors.white,
    double? fontSize,
    FontWeight? fontWeight,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int? maxLines,
    double? height,
  }) {
    return Text(
      this,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            height: height,
          ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
