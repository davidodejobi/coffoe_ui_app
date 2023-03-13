import 'package:coffoe_ui_app/view/details/details.dart';
import 'package:coffoe_ui_app/view/home/widgets/coffee_card.dart';
import 'package:coffoe_ui_app/view/home/widgets/special_coffee_card.dart';
import 'package:coffoe_ui_app/view/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/constant/extensions/extensions.dart';
import 'package:coffoe_ui_app/core/controller/home/home_controller.dart';
import 'package:coffoe_ui_app/view/home/widgets/custom_tabbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      body: ListView(
        children: [
          40.heightBox,
          RichText(
            text: TextSpan(
              text: 'Find the best\n',
              style: Theme.of(context).textTheme.displaySmall,
              children: [
                TextSpan(
                  text: 'coffee for you',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
          ).paddingSymmetric(
            horizontal: 20,
            vertical: 0,
          ),
          30.heightBox,
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.kDarkButtonBackground,
                hintText: 'Find your coffoe...',
                prefixIcon: 'search'
                    .addSvgImageWithSize(
                      size: 20,
                    )
                    .paddingAll(12),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ).paddingSymmetric(
            horizontal: 20,
            vertical: 0,
          ),
          30.heightBox,
          const CustomTabbar(),
          16.heightBox,
          Consumer(
            builder: (_, ref, __) {
              final coffoeImage = ref.watch(coffeeProvider).availCoffees;
              return SizedBox(
                height: 300.h,
                width: double.infinity,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return 20.widthBox;
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: coffoeImage.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                              coffeeModel: coffoeImage[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: [
                          Hero(
                            tag: coffoeImage[index].image,
                            child: CoffeeCard(
                              coffoeImage: coffoeImage,
                              index: index,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 20,
                            child: Container(
                              height: 30.h,
                              width: 30.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.kDarkPrimaryColor,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ).paddingOnly(
                left: 20,
              );
            },
          ),
          20.heightBox,
          'Special for you'
              .addText(
                context,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )
              .paddingOnly(
                left: 20,
              ),
          20.heightBox,
          const SpecialCoffeeCard().paddingSymmetric(
            horizontal: 20,
            vertical: 0,
          ),
        ],
      ),
    );
  }
}
