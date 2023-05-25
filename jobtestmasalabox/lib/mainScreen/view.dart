import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobtestmasalabox/mainScreen/controller.dart';


class MainScreenView extends StatelessWidget {
 MainScreenView({
    super.key,
  });
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final MainScreenController mainScreenController =
        Get.put(MainScreenController());
    return Scaffold(
        appBar: AppBar(title: const Text("Masala Box")),
        body: Obx((() => mainScreenController.screen)),
        bottomNavigationBar: Obx(
          () {
            return BottomNavigationBar(
              currentIndex: mainScreenController.currentIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.people),
                  label: 'Home',
                )
              ],
              onTap: mainScreenController.changeCurrentIndex,
            );
          },
        ));
  }
}
