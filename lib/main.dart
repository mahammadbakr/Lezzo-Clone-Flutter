import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Helper/Language.dart';
import 'Helper/Theme.dart';
import 'Providers/SettingsProvider.dart';
import 'UI/Screens/HomeScreen/HomeScreen.dart';
import 'UI/Screens/SplashScreen/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //GENERATE PROVIDERS
      providers: [
        ChangeNotifierProvider<SettingsProvider>(
          create: (context) => SettingsProvider(),
        ),
        ChangeNotifierProvider<Language>(
          create: (context) => Language(),
        ),
      ],
      child: MaterialApp(
        title: 'Online Store By Voo Tech',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        //GENERATE ROUTES
        initialRoute: SplashScreen.routeSplashScreen,
        builder: (context, child) {
          return Consumer<Language>(
            builder: (_, language, __) => Directionality(
                textDirection: language.languageDirection == 'rtl'
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: child!),
          );
        },
        routes: {
          SplashScreen.routeSplashScreen: (context) => SplashScreen(),
          HomeScreen.routeHomeScreen: (context) => HomeScreen(),
        },
      ),
    );
  }
}
