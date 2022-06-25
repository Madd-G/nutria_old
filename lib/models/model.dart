import 'dart:convert';

List<Model> modelFromJson(String str) =>
    List<Model>.from(json.decode(str).map((x) => Model.fromJson(x)));

String modelToJson(List<Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Model {
  Model({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
  });

  int id;
  String name;
  String category;
  String description;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        category: json["category"] == null ? null : json["category"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "category": category == null ? null : category,
        "description": description == null ? null : description,
      };
}
