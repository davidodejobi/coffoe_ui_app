import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/view/details/widgets/image_detail_card.dart';
import 'package:coffoe_ui_app/view/details/widgets/size_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:coffoe_ui_app/constant/extensions/extensions.dart';
import 'package:coffoe_ui_app/models/coffoe_model.dart';
import 'package:coffoe_ui_app/view/shared/icon_container.dart';

class Details extends StatelessWidget {
  final CoffeeModel coffeeModel;
  const Details({
    Key? key,
    required this.coffeeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: coffeeModel.image,
              child: Container(
                height: 0.50.sh,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image:
                        AssetImage('assets/images/${coffeeModel.image}.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: IconContainer(
                                child: Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white.withOpacity(
                                      0.5,
                                    ),
                                    size: 15.r,
                                  ),
                                ),
                              ),
                            ),
                            IconContainer(
                              child: Center(
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white.withOpacity(
                                    0.5,
                                  ),
                                  size: 18.r,
                                ),
                              ),
                            ),
                          ],
                        ).paddingSymmetric(
                          horizontal: 16,
                          vertical: 0,
                        ),
                      ],
                    ),
                    ImageDetailCard(coffeeModel: coffeeModel),
                  ],
                ),
              ),
            ),
            20.heightBox,
            'Description'.addText(
              context,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 16,
              height: 1.0,
              textAlign: TextAlign.left,
            ),
            20.heightBox,
            coffeeModel.description.addText(
              context,
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 16,
              textAlign: TextAlign.left,
              height: 1.0,
            ),
            20.heightBox,
            'Size'.addText(
              context,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
              fontSize: 14,
              height: 1.0,
              textAlign: TextAlign.left,
            ),
            20.heightBox,
            const SizeButtons(),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      'Price'.addText(
                        context,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        height: 1.0,
                        textAlign: TextAlign.left,
                      ),
                      5.heightBox,
                      coffeeModel.price.addText(
                        context,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                        height: 1.0,
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 70.h,
                    width: 1.w,
                    decoration: BoxDecoration(
                      color: AppColor.kDarkPrimaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: 'Buy Now'.addText(
                        context,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 1.0,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ).paddingAll(15),
      ),
    );
  }
}
