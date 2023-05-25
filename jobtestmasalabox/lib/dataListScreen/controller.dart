import 'package:get/get.dart';
import 'package:jobtestmasalabox/detailsScreen/view.dart';

import '../helperFunc/utils.dart';
import '../model/restuarant_model.dart';

class DataListController extends GetxController {
  var name = "helloo";
  final _restaurantData = RestaurantData().obs;

  @override
  void onInit() {

    getDataFromJson();
    super.onInit();
  }

  getDataFromJson() async {
    var jsonData = await Utils().readJsonFromFile('assets/data.json');
    _restaurantData.value = RestaurantData.fromJson(jsonData);
  }

  RestaurantData get restaurantData {
    return _restaurantData.value;
  }

  navToDetail(Restaurant? restaurant) {
    Get.to(DetailsView(
      restaurant: restaurant,
    ));
  }
}
