import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/CartTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/FavoriteTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/HomeTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/ProfileTab.dart';
import 'package:lezzoo_clone_flutter/UI/Screens/HomeScreen/Tabs/SearchTab.dart';

enum NavigationTab { home, favorite, search, cart, profile }

class SettingsProvider extends ChangeNotifier {
  int tabHome = 0;
  double navigationIconSize = 35.0;
  NavigationTab _navigationTab = NavigationTab.home;

  void setHomeTab(int tab) {
    tabHome = tab;
    notifyListeners();
  }

  int getHomeTab() {
    // ignore: unnecessary_null_comparison
    if (tabHome == null) {
      tabHome = 0;
    }
    return tabHome;
  }

  void setNavigationTab(NavigationTab navTab) {
    _navigationTab = navTab;
    notifyListeners();
  }

  NavigationTab getNavigationTab() {
    // ignore: unnecessary_null_comparison
    if (_navigationTab == null) {
      _navigationTab = NavigationTab.home;
    }
    return _navigationTab;
  }

  Widget getCurrentTab() {
    return tabHome == 0
        ? HomeTab()
        : tabHome == 1
            ? FavoriteTab()
            : tabHome == 2
                ? SearchTab()
                : tabHome == 3
                    ? CartTab()
                    : ProfileTab();
  }
}
