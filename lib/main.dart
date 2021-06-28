import 'package:flutter/material.dart';
import 'package:flutter_internship_test_task/screens/home/screen.dart';
import 'package:flutter_internship_test_task/theme/app_theme.dart';
import 'package:flutter_internship_test_task/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'network/models/recipe.dart';
import 'network/service_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureProvider<List<Recipe>>(
      create: (context) => ServiceApi.getRecipes(),
      child: MaterialApp(
        theme: AppTheme.lightAppTheme(),
        home: HomeScreen(),
      ),
    );
  }
}