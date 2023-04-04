import 'dart:async';
import 'package:flutter/material.dart';

import '../../application/app_preferences.dart';
import '../../application/dependency_injection.dart';
import '../../manager/assets_manager.dart';
import '../../manager/material_design/color_manager.dart';
import '../../manager/constance_manager.dart';
import '../../manager/routing/route_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final AppPreferences _appPreferences = instance<AppPreferences>();
  Timer? _timer;
  _startDelay() =>
      _timer = Timer(const Duration(seconds: AppConstance.timerDelay), _goNext);

  _goNext() async {
    Navigator.pushReplacementNamed(context, Routes.pageRoute);
    _appPreferences.isUserLoggedIn().then((isUserLoggedIn) {
      if (isUserLoggedIn) {
        // navigate to main screen
        // Navigator.pushReplacementNamed(context, Routes.mainRoute);
      } else {
        _appPreferences
            .isOnBoardingScreenViewed()
            .then((isOnBoardingScreenViewed) {
          if (isOnBoardingScreenViewed) {
          // navigate to login screen
          // Navigator.pushReplacementNamed(context, Routes.loginRoute);
          } else {
          // navigate to on boarding screen
          // Navigator.pushReplacementNamed(context, Routes.onboardingRoute);
          }
        });
      }
    });
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body:
          const Center(child: Image(image: AssetImage(ImageAssets.splashLogo))),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
