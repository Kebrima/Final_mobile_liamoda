import 'package:flutter/material.dart';
import 'package:liamoda/providers/main_page_provider.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainPageProvider mainPageProvider = Provider.of<MainPageProvider>(context);
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: mainPageProvider.images.length,
            separatorBuilder: (_, index) => SizedBox(
              height: 15,
            ),
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  mainPageProvider.images[index],
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  mainPageProvider.titles[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  mainPageProvider.subtitles[index],
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // itemCount: mainPageProvider.catalog.length,
              itemCount: mainPageProvider.catalog.length,
              separatorBuilder: (_, index) => SizedBox(
                width: 20,
              ),
              itemBuilder: (_, index) => Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      mainPageProvider.catalog[index],
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    mainPageProvider.catalogTitles[index],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 350,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1,
                  mainAxisSpacing: 20),
              itemBuilder: (_, index) => Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      mainPageProvider.grid[index],
                      width: 300,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      mainPageProvider.gridTitles[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      mainPageProvider.gridSubTitles[index],
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
