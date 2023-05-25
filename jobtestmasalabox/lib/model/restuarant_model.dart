import 'dish_model.dart';
import 'hour_model.dart';
import 'location_model.dart';

class Restaurant {
  String name;
  String cuisine;
  String price;
  double rating;
  Location location;
  Hours hours;
  String website;
  String phoneNumber;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.rating,
    required this.location,
    required this.hours,
    required this.website,
    required this.phoneNumber,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      cuisine: json['cuisine'],
      price: json['price'],
      rating: json['rating'],
      location: Location.fromJson(json['location']),
      hours: Hours.fromJson(json['hours']),
      website: json['website'],
      phoneNumber: json['phone number'],
    );
  }
}

class RestaurantData {
  List<Restaurant>? restaurants;
  List<Dish>? dishes;

  RestaurantData({
    this.restaurants,
    this.dishes,
  });

  factory RestaurantData.fromJson(Map<String, dynamic> json) {
    return RestaurantData(
      restaurants: List<Restaurant>.from(
          json['restaurants'].map((x) => Restaurant.fromJson(x))),
      dishes: List<Dish>.from(json['dishes'].map((x) => Dish.fromJson(x))),
    );
  }
}
