import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/presentation/widget/app_input_text.dart';
import 'package:booking_aja/presentation/widget/primary_button.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/app_dimen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppDimen.w24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Login",
            style: AppFont.h3,
          ),
          16.0.height,
          const AppInputText(
            label: "Email",
          ),
          16.0.height,
          const AppInputText(
            label: "Password",
          ),
          16.0.height,
          PrimaryButton(
            onPressed: () {},
            text: "Login",
            width: double.infinity,
            type: PrimaryButtonType.type3,
          ),
        ],
      ),
    );
  }
}
