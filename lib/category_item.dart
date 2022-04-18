// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  // ignore: use_key_in_widget_constructors
  CategoryItem(this.title, this.color, this.id);

  void navigation(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/category-meals', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => navigation(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Center(
            child: Text(title, style: Theme.of(context).textTheme.bodyText2)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
