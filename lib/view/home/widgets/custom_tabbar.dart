import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/constant/extensions/num_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/padding_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/string_ext.dart';
import 'package:coffoe_ui_app/core/controller/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomTabbar extends StatelessWidget {
  const CustomTabbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final selectedCoffee = ref.watch(coffeeProvider).selectedCoffee;
        final coffees = ref.watch(coffeeProvider).coffees;
        return SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: coffees.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  ref.read(coffeeProvider).selectCoffoe(index);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    coffees[index].addText(
                      context,
                      color: selectedCoffee == coffees[index]
                          ? AppColor.kDarkPrimaryColor
                          : Colors.white.withOpacity(
                              0.33,
                            ),
                      fontWeight: FontWeight.bold,
                    ),
                    5.heightBox,
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: selectedCoffee == coffees[index]
                            ? AppColor.kDarkPrimaryColor
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ).paddingOnly(
                  right: 25,
                ),
              );
            },
          ),
        ).paddingOnly(
          left: 20,
        );
      },
    );
  }
}
