import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/feature/history/historyModel.dart';
import 'package:get/get.dart';

class CustomDropdownController extends GetxController {
  List<String> evListe = <String>["EV 1", "EV 2"].obs;
  late RxString secilen;

  @override
  void onInit() {
    secilen = evListe[0].obs;
  }
}
