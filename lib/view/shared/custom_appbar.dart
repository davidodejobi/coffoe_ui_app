// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffoe_ui_app/view/shared/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/constant/extensions/extensions.dart';

PreferredSize customAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50.0),
    child: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconContainer(
            child: 'menu'.addSvgImage(),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl:
                  'https://askmicrobiology.com/wp-content/uploads/2019/08/person-image-806x440.png',
              imageBuilder: (context, imageProvider) => Container(
                width: 35.r,
                height: 35.r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const SpinKitFadingCircle(
                color: AppColor.kDarkPrimaryColor,
                size: 30.0,
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
              ),
            ),
          ),
        ],
      ).paddingSymmetric(
        horizontal: 20,
        vertical: 0,
      ),
    ),
  );
}
