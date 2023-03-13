import 'package:coffoe_ui_app/constant/extensions/num_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/padding_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/string_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialCoffeeCard extends StatelessWidget {
  const SpecialCoffeeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 150.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 2,
            offset: const Offset(0, -1),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(1.0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: const [
            0.0,
            0.5,
            1.0,
          ],
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: 200.h,
              width: 200.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/coffoe1.jpeg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                10.heightBox,
                '5 Coffee Beans For You Must Try !'
                    .addText(
                      context,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    )
                    .paddingOnly(
                      left: 20,
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
