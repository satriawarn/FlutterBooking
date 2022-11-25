import 'package:booking_aja/data/src/img_string.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/config.dart';

class FavoriteHeader extends StatelessWidget {
  const FavoriteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimen.w16),
      padding: EdgeInsets.all(AppDimen.w8),
      height: 163.0.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.asset(ImgString.cittaPlants3),
          24.0.width,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Italy",
                  style: AppFont.paragraphSmall,
                ),
                8.0.height,
                Text(
                  "Meet new rommies and find new adventures.",
                  style: AppFont.h4.copyWith(
                    height: 1.2.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
