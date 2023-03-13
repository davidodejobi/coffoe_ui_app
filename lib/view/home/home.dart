import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/constant/extensions/extensions.dart';
import 'package:coffoe_ui_app/core/controller/home/home_controller.dart';
import 'package:coffoe_ui_app/shared/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          Consumer(
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
          ),
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
                    return Stack(
                      children: [
                        Container(
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
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
          Container(
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
          ).paddingSymmetric(
            horizontal: 20,
            vertical: 0,
          ),
        ],
      ),
    );
  }
}
