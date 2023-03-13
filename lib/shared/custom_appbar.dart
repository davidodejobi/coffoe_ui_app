import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffoe_ui_app/constant/app_color.dart';
import 'package:coffoe_ui_app/constant/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

PreferredSize customAppbar(BuildContext context) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50.0),
    child: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.r,
            width: 40.r,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 2,
                  offset: const Offset(0, -1),
                ),
              ],
              gradient: LinearGradient(
                colors: [
                  //grey to black
                  // Color(0xFF38383D),
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
            child: 'menu'.addSvgImage(),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl:
                  'https://askmicrobiology.com/wp-content/uploads/2019/08/person-image-806x440.png',
              imageBuilder: (context, imageProvider) => Container(
                width: 40.r,
                height: 40.r,
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
