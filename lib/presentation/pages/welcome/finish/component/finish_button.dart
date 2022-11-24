import 'package:booking_aja/config/theme/app_dimen.dart';
import 'package:booking_aja/presentation/widget/primary_button.dart';
import 'package:flutter/material.dart';

class FinishButton extends StatelessWidget {
  const FinishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w32),
      child: PrimaryButton(
        onPressed: () {},
        text: "Let's go",
        width: double.infinity,
      ),
    );
  }
}
