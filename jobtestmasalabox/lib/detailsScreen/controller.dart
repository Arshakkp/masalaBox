import 'package:get/get.dart';
import 'package:jobtestmasalabox/contactScreen/view.dart';

class DetailController extends GetxController {
  navToContact(String phno) {
    Get.to(ContactView(phNo: phno));
  }

}
