import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/feature/history/historyModel.dart';
import 'package:get/get.dart';

class VibrationController extends GetxController {
  List<String> cihazListe = <String>["Kahve Makinesi", "Buzdolabi"].obs;
  late RxString secilen;
  @override
  void onInit() {
    secilen = cihazListe[0].obs;
  }
}
