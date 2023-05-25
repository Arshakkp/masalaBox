import 'package:get/get.dart';

class ContactController extends GetxController {
  navTo() {
    Get.deleteAll();
    Get.offAllNamed('/', arguments: 1);
  }
}
