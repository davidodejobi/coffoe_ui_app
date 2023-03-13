import 'package:coffoe_ui_app/constant/extensions/num_ext.dart';
import 'package:coffoe_ui_app/constant/extensions/string_ext.dart';
import 'package:coffoe_ui_app/models/coffoe_model.dart';
import 'package:coffoe_ui_app/view/details/widgets/icon_text_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageDetailCard extends StatelessWidget {
  const ImageDetailCard({
    super.key,
    required this.coffeeModel,
  });

  final CoffeeModel coffeeModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1E0E00).withOpacity(0.3),
            const Color(0xFF1E0E00).withOpacity(0.5),
            const Color(0xFF1E0E00).withOpacity(1.0),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    coffeeModel.name.addText(
                      context,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      height: 1.0,
                    ),
                    coffeeModel.additionals.addText(
                      context,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    10.heightBox,
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: const Color(0xFFB87651),
                          size: 25.r,
                        ),
                        5.widthBox,
                        '4.5'.addText(
                          context,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                          height: 1.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 0.3.sw,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const IconTextBox(
                          icon: 'cafe',
                          text: 'Coffee',
                        ),
                        20.widthBox,
                        const IconTextBox(
                          icon: 'droplet',
                          text: '',
                        ),
                      ],
                    ),
                    10.heightBox,
                    Container(
                      height: 30.r,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: Center(
                          child: 'Medium roasted'.addText(
                        context,
                        fontSize: 12,
                      )),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
