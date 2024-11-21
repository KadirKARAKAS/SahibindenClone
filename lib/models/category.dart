class Category {
  final int id;
  final String name;
  final String description;
  final String icon;

  Category(
      {required this.id,
      required this.name,
      required this.icon,
      required this.description});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json["description"] as String,
      icon: json['icon'] as String,
    );
  }
}
