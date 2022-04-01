import 'package:flutter/material.dart';
import 'package:flutter_consumer_provider/providers/food_model.dart';


class Foods extends ChangeNotifier {
  List<Food> _items = [
    Food(
      id: 'p1',
      title: 'Canes',
      description: 'Testy Canes',
      price: 49.99,
      imageUrl: 'assets/images/canes.jpg',
    ),
    Food(
      id: 'p2',
      title: 'Chicken Sandwich',
      description: 'Chicken Sandwich',
      price: 49.99,
      imageUrl: 'assets/images/chickensandwich.jpg',
    ),
    Food(
      id: 'p3',
      title: 'KFC',
      description: 'Testy KFC Food',
      price: 49.99,
      imageUrl: 'assets/images/kfc.jpg',
    ),
    Food(
      id: 'p4',
      title: 'Mcdonalds',
      description: 'Testy Mcdonalds Food',
      price: 49.99,
      imageUrl: 'assets/images/mcdonalds.jpg',
    ),
    Food(
      id: 'p5',
      title: 'Pizza',
      description: 'Testy Pizza',
      price: 49.99,
      imageUrl: 'assets/images/pizza.jpg',
    ),
    Food(
      id: 'p6',
      title: 'Sandwich',
      description: 'Testy Sandwich',
      price: 49.99,
      imageUrl: 'assets/images/sandwich.jpg',
    ),
    Food(
      id: 'p7',
      title: 'Subway',
      description: 'Testy Subway',
      price: 49.99,
      imageUrl: 'assets/images/subway.jpg',
    ),
  ];

  List<Food> get items {
    return [..._items];
  }

  Food findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
