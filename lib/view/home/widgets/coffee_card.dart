import 'package:coffoe_ui_app/constant/extensions/padding_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/string_ext.dart';
import 'package:coffoe_ui_app/models/coffoe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({
    Key? key,
    required this.coffoeImage,
    required this.index,
  }) : super(key: key);

  final List<CoffeeModel> coffoeImage;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: 170.w,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/images/${coffoeImage[index].image}.jpeg',
              width: double.infinity,
              height: 180.h,
              fit: BoxFit.cover,
            ),
          ).paddingOnly(
            left: 10,
            top: 10,
            right: 10,
            bottom: 10,
          ),
          Expanded(
            flex: 1,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              coffoeImage[index].name.addText(
                    context,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
              coffoeImage[index].additionals.addText(
                    context,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              Row(
                children: [
                  coffoeImage[index].price.addText(
                        context,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16,
                      )
                ],
              ),
            ]).paddingOnly(
              left: 10,
              right: 10,
            ),
          ),
        ],
      ),
    );
  }
}
