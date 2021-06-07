import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/Constants.dart';
import 'package:lezzoo_clone_flutter/Helper/ThemeOf.dart';
import 'package:lezzoo_clone_flutter/Providers/SettingsProvider.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/CartTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/ProfileTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/SearchTab.dart';
import 'package:provider/provider.dart';

import 'Tabs/FavoriteTab.dart';
import 'Tabs/HomeTab.dart';

class HomeScreen extends StatefulWidget {
  static const routeHomeScreen = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
        builder: (_, homeState, __) => Scaffold(
            key: _scaffoldKey,
            body: homeState.getCurrentTab(),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: theme(context).primaryColor,
              iconSize: homeState.navigationIconSize,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Constants.homeIcon),
                  ),
                  label: 'Job',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Constants.favoriteIcon),
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Constants.searchIcon),
                  ),
                  label: 'Notification',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Constants.cartIcon),
                  ),
                  label: 'Profile',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(Constants.profileIcon),
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: homeState.getHomeTab(),
              onTap: (index) {
                setState(() {
                  homeState.setHomeTab(index);
                  print(index);
                });
              },
            )));
  }
}
