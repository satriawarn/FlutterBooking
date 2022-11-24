import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/presentation/pages/welcome/component/welcome_button.dart';
import 'package:booking_aja/presentation/pages/welcome/component/welcome_image.dart';
import 'package:booking_aja/presentation/pages/welcome/component/welcome_title.dart';
import 'package:booking_aja/presentation/pages/welcome/finish/component/finish_button.dart';
import 'package:booking_aja/presentation/pages/welcome/finish/component/finish_image.dart';
import 'package:booking_aja/presentation/pages/welcome/finish/component/finish_title.dart';
import 'package:booking_aja/utils/extension/double_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'finish_cubit.dart';
import 'finish_state.dart';

class FinishPage extends StatelessWidget {
  const FinishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => FinishCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<FinishCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.accentGreen,
      body: Column(
        children: [
          102.0.height,
          const FinishImage(),
          24.0.height,
          const FinishTitle(),
          24.0.height,
          const FinishButton(),
          95.0.height,
        ],
      ),
    );
  }
}
