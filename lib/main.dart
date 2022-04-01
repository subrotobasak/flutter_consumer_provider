import 'package:flutter/material.dart';
import 'package:flutter_consumer_provider/providers/foods.dart';
import 'package:flutter_consumer_provider/screens/food_detail_screen.dart';
import 'package:flutter_consumer_provider/screens/foods_overview_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Foods(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Order',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
                .copyWith(secondary: Colors.red)),
        home: FoodOverview(),
        routes: {
          FoodDetailScreen.routeName: (cntx) => FoodDetailScreen(),
        },
      ),
    );
  }
}
