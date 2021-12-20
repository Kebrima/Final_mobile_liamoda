import 'package:flutter/material.dart';
import 'package:liamoda/providers/catalog_provider.dart';
import 'package:provider/provider.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CatalogProvider catalogProvider = Provider.of<CatalogProvider>(context);
    return Center(
      child: ListView.separated(
        itemCount: catalogProvider.catalog.length,
        separatorBuilder: (_, index) => SizedBox(
          height: 10,
        ),
        itemBuilder: (_, index) => Container(
          // margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 1,
                  offset: Offset(2, 4),
                )
              ]),
          child: Row(
            children: [
              Image.asset(
                catalogProvider.catalog[index],
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 40,
              ),
              Flexible(
                child: Text(
                  catalogProvider.catalogTitle[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
