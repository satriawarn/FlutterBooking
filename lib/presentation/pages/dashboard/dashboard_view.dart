import 'package:booking_aja/config/theme/app_color.dart';
import 'package:booking_aja/presentation/pages/dashboard/component/bottom_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dashboard_cubit.dart';
import 'dashboard_state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DashboardCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<DashboardCubit>(context);

    return Scaffold(
      backgroundColor: AppColor.ink05,
      body: Column(
        children: [
          const Expanded(child: SizedBox()),
          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              return BottomMenu(
                cubit: cubit,
              );
            },
          ),
        ],
      ),
    );
  }
}
