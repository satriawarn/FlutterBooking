import 'package:auto_route/auto_route.dart';
import 'package:booking_aja/config/router/app_router.dart';
import 'package:booking_aja/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking_aja/utils/helper/helper.dart';

class FirstInstallGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isFirstInstall = PrefHelper.instance.isFirstInstall;
    if (isFirstInstall) {
      router.replace(const OnboardingRoute());
    } else {
      router.replace(const WelcomeRoute());
    }
  }
}
