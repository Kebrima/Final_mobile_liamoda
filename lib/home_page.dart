import 'package:flutter/material.dart';
import 'package:liamoda/providers/home_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                'liamoda',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: Text(
          homeProvider.appBarTitle,
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        items: homeProvider.bottomNavigationIcons,
        currentIndex: homeProvider.navIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (value) => homeProvider.changeNavIndex(value),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: homeProvider.navPage,
      ),
    );
  }
}
