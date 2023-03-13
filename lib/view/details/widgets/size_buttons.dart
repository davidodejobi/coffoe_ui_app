// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/core/controller/detail/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:coffoe_ui_app/constant/extensions/extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SizeButtons extends StatelessWidget {
  const SizeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final size = ref.watch(detailProvider);
        final listOfSize = size.size;
        return Row(
          children: [
            for (int e = 0; e < size.size.length; e++)
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    ref.read(detailProvider).selectSize(e);
                  },
                  child: Container(
                    height: 35.h,
                    width: 0.2.sw,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: listOfSize[e] == size.selectedSize
                            ? AppColor.kDarkPrimaryColor
                            : Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                      color: listOfSize[e] == size.selectedSize
                          ? Colors.transparent
                          : AppColor.kDarkButtonBackground,
                    ),
                    child: Center(
                      child: listOfSize[e].addText(
                        context,
                        color: listOfSize[e] == size.selectedSize
                            ? AppColor.kDarkPrimaryColor
                            : Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        height: 1.0,
                      ),
                    ),
                  ),
                ).paddingOnly(
                  right: size.size.length - 1 == e ? 0 : 20.w,
                ),
              ),
          ],
        );
      },
    );
  }
}
