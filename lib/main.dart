import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_chefapp/config.dart';
import 'package:flutter_application_chefapp/pages/menu.dart';
import 'package:flutter_application_chefapp/pages/signin.dart';
import 'package:flutter_application_chefapp/pages/splashScreen.dart';
import 'package:flutter_application_chefapp/service/signin.dart';

void main()async {
  init();
  WidgetsFlutterBinding.ensureInitialized();
   EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(supportedLocales: [Locale('en'),Locale('ar')],
  path: "assets/translations",
  fallbackLocale: Locale('en'),
  child: MyApp(),
  ));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

// fluttertest99test@

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
