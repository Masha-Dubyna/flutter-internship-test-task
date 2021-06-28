import 'dart:convert';
import 'package:flutter_internship_test_task/network/models/recipe.dart';
import 'package:http/http.dart' as http;

class ServiceApi {
  static const url = 'https://raw.githubusercontent.com/ababicheva/FlutterInternshipTestTask/main/recipes.json';

  static Future<List<Recipe>> getRecipes() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var maps = jsonDecode(response.body);
      var result = List.generate(
        maps.length,
        (index) => Recipe.fromJson(maps[index]),
      );
      result.sort((recipe1, recipe2) => recipe1.id > recipe2.id ? 1 : 0);
      return result;
    } else {
      return null;
    }
  }
}