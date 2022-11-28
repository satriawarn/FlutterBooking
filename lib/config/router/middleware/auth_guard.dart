import 'package:auto_route/auto_route.dart';
import 'package:booking_aja/config/router/app_router.dart';
import 'package:booking_aja/utils/helper/helper.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    bool isLogin = PrefHelper.instance.token.isNotEmpty;
    if (isLogin) {
      router.replace(const DashboardRoute());
    } else {
      router.push(const LoginRoute());
    }
  }
}
