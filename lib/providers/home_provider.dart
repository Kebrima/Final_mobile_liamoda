// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liamoda/screens/catalog_page.dart';
import 'package:liamoda/screens/main_page.dart';
import 'package:liamoda/screens/profile_page.dart';

class HomeProvider with ChangeNotifier {
  String appBarTitle = 'Главная';

  Widget navPage = MainPage();

  List<Widget> pages = [
    MainPage(),
    CatalogPage(),
    ProfilePage(),
  ];

  List<String> appBarTitles = [
    'Главная',
    'Каталог',
    'Профиль',
  ];

  List<BottomNavigationBarItem> bottomNavigationIcons = [
    BottomNavigationBarItem(
      title: Text('Главная'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text('Каталог'),
      icon: Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      title: Text('Профиль'),
      icon: Icon(Icons.person),
    ),
  ];

  int navIndex = 0;

  changeNavIndex(int index) {
    navIndex = index;
    appBarTitle = appBarTitles[navIndex];
    navPage = pages[navIndex];
    notifyListeners();
  }
}
