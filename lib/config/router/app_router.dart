import 'package:auto_route/auto_route.dart';
import 'package:booking_aja/presentation/pages/dashboard/dashboard_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/favorite/favorite_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/settings/settings_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/detail/detail_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/trips_view.dart';
import 'package:booking_aja/presentation/pages/onboarding/component/component.dart';
import 'package:booking_aja/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking_aja/presentation/pages/welcome/login/login_view.dart';
import 'package:booking_aja/presentation/pages/welcome/register/register_view.dart';
import 'package:booking_aja/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: OnboardingPage, initial: true, path: '/onboarding'),
    AutoRoute(page: WelcomePage, path: '/welcome'),
    AutoRoute(page: LoginPage, path: '/login'),
    AutoRoute(page: RegisterPage, path: '/register'),
    AutoRoute(page: DashboardPage, path: '/home'),
    AutoRoute(page: TripsPage, path: '/trips'),
    AutoRoute(page: DetailPage, path: '/detail'),
    AutoRoute(page: FavoritePage, path: '/favorite'),
    AutoRoute(page: SettingsPage, path: '/setting'),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
