import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on num {
  SizedBox get heightBox => SizedBox(height: toDouble().h);
  SizedBox get widthBox => SizedBox(width: toDouble().w);
  SizedBox squareBox({num? height, num? width}) => SizedBox(
        height: height?.toDouble() ?? toDouble().h,
        width: width?.toDouble() ?? toDouble().w,
      );
}
