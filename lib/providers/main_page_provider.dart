import 'package:flutter/cupertino.dart';

class MainPageProvider with ChangeNotifier {
  List<String> images = [
    'assets/lamoda_main_1.jpg',
    'assets/lamoda_main_2.jpg',
  ];

  List<String> titles = [
    'В стиле Dr.Martens',
    'Зимой и летом',
  ];

  List<String> catalog = [
    'assets/lamoda_main_catalog_1.jpg',
    'assets/lamoda_main_catalog_2.jpg',
    'assets/lamoda_main_catalog_3.jpg',
    'assets/lamoda_main_catalog_4.jpg',
    'assets/lamoda_main_catalog_5.jpg',
  ];

  List<String> catalogTitles = [
    'Ботинки',
    'Пуховики',
    'Джемперы',
    'Сапоги',
    'Головные уборы',
  ];

  List<String> grid = [
    'assets/lamoda_main_grid_1.jpg',
    'assets/lamoda_main_grid_2.jpg',
    'assets/lamoda_main_grid_3.jpg',
    'assets/lamoda_main_grid_4.jpg',
  ];

  List<String> gridTitles = [
    'Liamoda Planet',
    'OUTLET',
    'Жизнь в движении',
    'Косметика',
  ];

  List<String> gridSubTitles = [
    'Узнайте о наших экологических инициативах',
    'Коллекции одежды, обуви, и аксессуаров по выгодным ценам',
    'Все, что нужно для занятий спортом',
    'для ухода за собой и макияжа',
  ];

  List<String> subtitles = [
    'Одеты по погоде!',
    'Всегда в форме!',
  ];
}
