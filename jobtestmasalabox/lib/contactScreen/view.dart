import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtestmasalabox/contactScreen/controller.dart';

class ContactView extends StatelessWidget {
  ContactView({super.key, required this.phNo});
  final String phNo;

  @override
  Widget build(BuildContext context) {
    final ContactController contactController = Get.put(ContactController());

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Phone Number:",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      phNo,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    contactController.navTo();
                  },
                  child: const Text("Call"))),
        ],
      ),
    );
  }
}
