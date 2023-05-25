class Dish {
  String name;
  String cuisine;
  String price;
  String description;

  Dish({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.description,
  });

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      name: json['name'],
      cuisine: json['cuisine'],
      price: json['price'],
      description: json['description'],
    );
  }
}