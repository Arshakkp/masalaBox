import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtestmasalabox/dataListScreen/controller.dart';

class DataListView extends StatelessWidget {
  const DataListView({super.key});

  @override
  Widget build(BuildContext context) {
    final DataListController _datListController = Get.put(DataListController());

    return Obx((() {
      return Column(
        children: [
          const Center(
            child: Text(
              "Restuarant",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _datListController.restaurantData.restaurants?.length,
              itemBuilder: (context, index) {
                var resturant =
                    _datListController.restaurantData.restaurants?[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      onTap: () {
                        _datListController.navToDetail(resturant);
                      },
                      title: Text(resturant?.name ?? ""),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(resturant?.location.address ?? ""),
                          Text(
                              "${resturant?.hours.open} to ${resturant?.hours.close}"),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                    )
                  ],
                );
              },
            ),
          ),
          const Center(
            child: Text(
              "Dishes",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _datListController.restaurantData.restaurants?.length,
              itemBuilder: (context, index) {
                var dish = _datListController.restaurantData.dishes?[index];
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      onTap: () {},
                      title: Text(dish?.name ?? ""),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(dish?.description ?? ""),
                          Text(dish?.price ?? "0.0"),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      );
    }));
  }
}
