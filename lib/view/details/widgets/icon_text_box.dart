import 'package:coffoe_ui_app/constant/extensions/num_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/string_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconTextBox extends StatelessWidget {
  final String icon;
  final String text;
  const IconTextBox({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.r,
      width: 40.r,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black.withOpacity(0.7),
      ),
      child: Column(
        children: [
          Expanded(child: icon.addSvgImage()),
          5.heightBox,
          text.addText(
            context,
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 10,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
