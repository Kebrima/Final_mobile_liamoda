import 'package:flutter/material.dart';
import 'package:liamoda/home_page.dart';
import 'package:liamoda/providers/catalog_provider.dart';
import 'package:liamoda/providers/home_provider.dart';
import 'package:liamoda/providers/main_page_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => HomeProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => MainPageProvider(),
          ),
          ChangeNotifierProvider(
            create: (_) => CatalogProvider(),
          ),
        ],
        child: MyHomePage(),
      ),
    );
  }
}
