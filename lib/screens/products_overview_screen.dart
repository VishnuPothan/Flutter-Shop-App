import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';

enum FilterOptions { Favourite, All }

class ProductsOverviewScreen extends StatefulWidget {
  @override
  _ProductsOverviewScreenState createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {
  var _showFavouriteOnly = false;

  @override
  Widget build(BuildContext context) {
    // final productContainer = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favourite) {
                // productContainer.showFavouritesOnly();
                setState(() {
                  _showFavouriteOnly = true;
                });
              } else {
                // productContainer.showAll();
                setState(() {
                  _showFavouriteOnly = false;
                });
              }
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favourite'),
                value: FilterOptions.Favourite,
              ),
              PopupMenuItem(
                child: Text('Show All'),
                value: FilterOptions.All,
              )
            ],
          )
        ],
      ),
      body: ProductsGrid(_showFavouriteOnly),
    );
  }
}
