class Recipe {
  int id;
  String name;
  String picture;
  String description;

  Recipe({this.id, this.name, this.picture, this.description});

  Recipe.fromJson(Map<String, dynamic> map) {
    this.id = map['id'];
    this.name = map['name'];
    this.picture = map['picture'];
    this.description = map['description'];
  }

}