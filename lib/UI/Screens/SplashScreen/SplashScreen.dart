import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Helper/Language.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/HomeScreen.dart';
import 'package:provider/provider.dart';

import '../../../Constants.dart';

class SplashScreen extends StatefulWidget {
  static const routeSplashScreen = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initDataFromAPI();
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.pushNamed(context, HomeScreen.routeHomeScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    // final words = Provider.of<Language>(context).getWords;
    return Scaffold(
      backgroundColor: theme(context).primaryColor,
      body: Center(
        child: Image.asset(Constants.logoAnim, scale: 1.5,color: Colors.white,),
      ),
    );
  }

  void initDataFromAPI() {
    // Provider.of<DataProvider>(context, listen: false).getAllData();
    // Provider.of<Language>(context, listen: false).getLanguageDataInLocal();
  }
}
