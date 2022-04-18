import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  const CategoryMealScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final name = routes['title'];

    return Scaffold(
      appBar: AppBar(
        title: Text(name.toString()),
      ),
      body: Center(
        child: Container(
            child: Text(name.toString(),
                style: Theme.of(context).textTheme.bodyText1)),
      ),
    );
  }
}
