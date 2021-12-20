import 'package:flutter/cupertino.dart';

class CatalogProvider with ChangeNotifier {
  List<String> catalog = [
    'assets/catalog_1.jpg',
    'assets/catalog_2.jpg',
    'assets/catalog_3.jpg',
    'assets/catalog_4.jpg',
    'assets/catalog_5.jpg',
    'assets/catalog_6.jpg',
    'assets/catalog_7.jpg',
  ];

  List<String> catalogTitle = [
    'Распродажа',
    'Новинки',
    'Одежда',
    'Обувь',
    'Аксессуары',
    'Premium',
    'Спорт',
  ];
}
