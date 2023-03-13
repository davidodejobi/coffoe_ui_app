import 'package:flutter/material.dart';

extension SizedBoxExtension on num {
  SizedBox get heightBox => SizedBox(height: toDouble());
  SizedBox get widthBox => SizedBox(width: toDouble());
  SizedBox squareBox({num? height, num? width}) => SizedBox(
        height: height?.toDouble() ?? toDouble(),
        width: width?.toDouble() ?? toDouble(),
      );
}
