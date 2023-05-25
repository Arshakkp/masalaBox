import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtestmasalabox/detailsScreen/controller.dart';
import 'package:jobtestmasalabox/model/restuarant_model.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key, this.restaurant});
  final Restaurant? restaurant;
  TextStyle _textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  Widget labelAndValue({required String label, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "$label:",
          style: _textStyle,
        ),
        Text(
          value,
          style: _textStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final DetailController _detailController = Get.put(DetailController());
    Widget screen() {
      return Column(
        children: [
          labelAndValue(label: "Cuisine", value: restaurant?.cuisine ?? ""),
          const SizedBox(height: 10),
          labelAndValue(label: "Price", value: restaurant?.price ?? ""),
          const SizedBox(height: 10),
          labelAndValue(
              label: "Working Hours",
              value:
                  "${restaurant?.hours.open} to ${restaurant?.hours.close} "),
          const SizedBox(height: 10),
          labelAndValue(label: "Website", value: restaurant?.website ?? ""),
          const SizedBox(height: 10),
          Wrap(
            children: [
              Text(
                "Address :",
                style: _textStyle,
              ),
              Text(
                restaurant?.location.address ?? "",
                style: _textStyle,
              )
            ],
          ),
          ElevatedButton(
              onPressed: () {
                _detailController.navToContact(restaurant?.phoneNumber ?? "");
              },
              child: const Text("Contact Info"))
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(restaurant?.name ?? "")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: screen(),
      ),
    );
  }
}
