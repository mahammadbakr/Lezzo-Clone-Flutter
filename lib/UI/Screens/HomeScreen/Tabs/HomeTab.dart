import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Constants.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/BalanceHome.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/HeaderHome.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Components/StarSectionHome.dart';
import 'package:provider/provider.dart';

class HomeTab extends StatelessWidget {
  // final words = Provider.of<Language>(context).words;

  @override
  Widget build(BuildContext context) {
    // final words = Provider.of<OtherProvider>(context,listen:false ).getAllSkins();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HeaderHome(),
              BalanceHome(),
              StarSectionHome(),
            ],
          ),
        ),
      ),
    );
  }
}
