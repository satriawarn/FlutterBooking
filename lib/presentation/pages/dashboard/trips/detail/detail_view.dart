import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/detail/component/detail_desc.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/detail/component/detail_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'detail_cubit.dart';
import 'detail_state.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DetailCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DetailCubit>(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 32.0.w,
          icon: const Icon(
            Icons.chevron_left,
            color: AppColor.ink02,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.ink05,
      ),
      backgroundColor: AppColor.ink05,
      body: Column(
        children: const [
          DetailImage(),
          DetailDesc(),
        ],
      ),
    );
  }
}
