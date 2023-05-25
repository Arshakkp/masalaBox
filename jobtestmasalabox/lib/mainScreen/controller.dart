import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobtestmasalabox/callScreen/view.dart';
import 'package:jobtestmasalabox/dataListScreen/view.dart';

class MainScreenController extends GetxController {
  RxInt _currentIndex = 0.obs;

  final List<Widget> _view = [DataListView(), const CallView()];

  changeCurrentIndex(int index) {
    if (index != 1) _currentIndex.value = index;
  }

  @override
  void onInit() {
    var value = Get.arguments;

    if (value != null) {
      _currentIndex.value = value as int;
    }
    super.onInit();
  }

  int get currentIndex {
    return _currentIndex.value;
  }

  Widget get screen {
    return _view[_currentIndex.value];
  }
}
