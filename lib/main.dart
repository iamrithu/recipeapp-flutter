import 'package:flutter/material.dart';

import 'categories_screen.dart';
import './categoru_meals_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const routeName = '/category-name';
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ).copyWith(
          secondary: Colors.green,
        ),
        fontFamily: 'Raleway',
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Color.fromARGB(255, 7, 7, 7)),
          bodyText2: TextStyle(color: Color.fromARGB(255, 235, 226, 236)),
        ),
      ),
      home: SafeArea(child: CategoriesScreen()),
      routes: {
        '/category-meals': (context) => const CategoryMealScreen(),
      },
    );
  }
}
