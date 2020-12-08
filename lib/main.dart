import 'package:flutter/material.dart';

import './screens/productDetailScreen.dart';
import './screens/productsOverviewScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Lato'),
      home: ProductsOverviewScreen(),
      routes: {ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen()},
    );
  }
}
