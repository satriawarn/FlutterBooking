import 'package:booking_aja/config/config.dart';
import 'package:booking_aja/config/theme/app_color.dart';
import 'package:booking_aja/presentation/pages/dashboard/component/bottom_menu.dart';
import 'package:booking_aja/presentation/pages/dashboard/favorite/favorite_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/settings/settings_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dashboard_cubit.dart';
import 'dashboard_state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiClient apiClient = ApiClient();
    apiClient.get(Uri.parse(
        "https://898795a4-3d39-4db8-b8c6-367ef02e3b5d.mock.pstmn.io/api/v1/trips"));
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
          Expanded(child: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              return state.selectedIndex == 0
                  ? const TripsPage()
                  : state.selectedIndex == 1
                      ? const FavoritePage()
                      : SettingsPage();
            },
          )),
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
