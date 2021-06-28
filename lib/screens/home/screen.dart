import 'package:flutter/material.dart';
import 'package:flutter_internship_test_task/network/models/recipe.dart';
import 'package:flutter_internship_test_task/resources/strings.dart';
import 'package:flutter_internship_test_task/screens/home/widgets/recipes_list_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  List<Recipe> _recipes;

  Widget build(BuildContext context) {
    _recipes = Provider.of<List<Recipe>>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: (_recipes != null)
      ? ListView.separated(
        itemBuilder: (context, index) => ListItem(recipe: _recipes[index],),
        separatorBuilder: (context, index) =>
        index != _recipes.length - 1
            ? Divider(
          height: 1,
          thickness: 1,
          indent: 116,
        )
            : null,
        itemCount: _recipes.length,
      )
      : SizedBox(),
    );
  }
}