import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../features/new_page/newPageView.dart';
import '../../features/splash_screen/splash_view.dart';
import '../string_manager.dart';

class Routes {
  static const String splashRoute = '/';
  static const String pageRoute = 'pageRoute';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.pageRoute:
        return MaterialPageRoute(builder: (_) => const NewPageView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const UnDefinedView(),
    );
  }
}

class UnDefinedView extends StatelessWidget {
  const UnDefinedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound).tr(),
      ),
      body: Center(
        child: const Text(AppStrings.noRouteFound).tr(),
      ),
    );
  }
}
