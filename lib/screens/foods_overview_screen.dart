import 'package:flutter/material.dart';
import 'package:flutter_consumer_provider/widget/foods_grid.dart';

class FoodOverview extends StatelessWidget {
  const FoodOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Order',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: (Icon(Icons.shopping_cart)),
            color: Colors.white,
          ),
        ],
      ),
      body: FoodsGrid(),
    );
  }
}
