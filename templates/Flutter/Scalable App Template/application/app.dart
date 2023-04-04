import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../manager/routing/route_manager.dart';
import '../manager/material_design/theme/theme_manager.dart';
import 'app_preferences.dart';
import 'dependency_injection.dart';


class MyApp extends StatefulWidget {


  const MyApp._internal(); 

  static const MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppPreferences appPreferences = instance<AppPreferences>();
  @override
  void didChangeDependencies() {
    appPreferences.getLocale().then((local) => {context.setLocale(local)});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: appThemeData[AppTheme.light],
      darkTheme: appThemeData[AppTheme.dark],
      themeMode: ThemeMode.light,
    );
  }
}
