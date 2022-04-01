import 'package:flutter/material.dart';
import 'package:flutter_consumer_provider/providers/food_model.dart';
import 'package:flutter_consumer_provider/screens/food_detail_screen.dart';
import 'package:provider/provider.dart';

class FoodItem extends StatelessWidget {
  FoodItem();

  @override
  Widget build(BuildContext context) {
    return Consumer<Food>(
      builder: (context, food, child) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                FoodDetailScreen.routeName,
                arguments: food.id,
              );
            },
            child: Image.asset(
              food.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black.withOpacity(0.5),
            leading: IconButton(
              icon: Icon(
                  food.isFavorite ? Icons.favorite : Icons.favorite_border),
              color: Colors.red,
              onPressed: () {
                food.toggleFavoriteData();
              },
            ),
            title: Text(
              food.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
