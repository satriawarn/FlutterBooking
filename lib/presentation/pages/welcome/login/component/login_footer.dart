import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Forgot Password? ',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(
                text: " Get New",
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
        8.0.height,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an account? ',
                style: AppFont.paragraphSmall.copyWith(color: AppColor.ink02),
              ),
              TextSpan(
                text: " Create New",
                style: AppFont.paragraphSmallBold,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
