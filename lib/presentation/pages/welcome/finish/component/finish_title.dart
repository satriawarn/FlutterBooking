import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/config/theme/app_dimen.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class FinishTitle extends StatelessWidget {
  const FinishTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: Column(
        children: [
          Text(
            "Find your Rommie",
            style: AppFont.h4,
          ),
          8.0.height,
          Text(
            "We've helped millions across the nation to find their perfect match.. you're next",
            style: AppFont.paragraphSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
