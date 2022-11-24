import 'package:booking_aja/config/theme/app_dimen.dart';
import 'package:booking_aja/presentation/widget/primary_button.dart';
import 'package:booking_aja/presentation/widget/secondary_button.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w16),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              onPressed: () {},
              text: "Explore",
            ),
          ),
          16.0.width,
          Expanded(
            child: SecondaryButton(
              onPressed: () {},
              text: "Login",
            ),
          ),
        ],
      ),
    );
  }
}
