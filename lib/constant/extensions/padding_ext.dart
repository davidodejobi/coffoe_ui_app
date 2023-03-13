import 'package:flutter/material.dart';

extension PaddingAll on Widget {
  Widget paddingAll([double padding = 16.0]) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }
}

extension PaddingSymmetric on Widget {
  Widget paddingSymmetric({double vertical = 16.0, double horizontal = 16.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }
}

extension PaddingOnly on Widget {
  Widget paddingOnly(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }
}

extension PaddingFromLTRB on Widget {
  Widget paddingFromLTRB(
      {double left = 0.0,
      double top = 0.0,
      double right = 0.0,
      double bottom = 0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: this,
    );
  }
}

extension PaddingHorizontal on Widget {
  Widget paddingHorizontal([double padding = 16.0]) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }
}

extension PaddingVertical on Widget {
  Widget paddingVertical([double padding = 16.0]) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: this,
    );
  }
}
