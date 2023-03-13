import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconContainer extends StatelessWidget {
  final Widget child;
  const IconContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.r,
      width: 35.r,
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
      child: child,
    );
  }
}
