import 'package:flutter/material.dart';
import 'package:flutter_internship_test_task/network/models/recipe.dart';

class ListItem extends StatelessWidget {
  final Recipe recipe;

  const ListItem({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: true,
      leading: Image.network(
        recipe.picture,
        height: 60,
        width: 90,
        fit: BoxFit.fill,
      ),
      title: Text(
        recipe.name,
        style: Theme.of(context).textTheme.bodyText1,
      ),
      subtitle: Text(
        recipe.description,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      trailing: Text(
        (recipe.id < 10) ? '0${recipe.id}' : '${recipe.id}',
        style: Theme.of(context).textTheme.bodyText1.copyWith(
          color: Theme.of(context).textTheme.bodyText2.color,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}