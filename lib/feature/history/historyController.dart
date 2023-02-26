import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/feature/history/historyModel.dart';
import 'package:get/get.dart';

class HistoryController extends GetxController {
  List<HistoryModel> fakeHistory = <HistoryModel>[].obs;

  @override
  void onInit() {
    fakeHistory = [
      HistoryModel(
          text: "14.40 Kahve Makinası acildi",
          imagePath: ImageConstants.instance.getKahve),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
      HistoryModel(
          text: "14.40 Kahve Makinası acildi",
          imagePath: ImageConstants.instance.getKahve),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
      HistoryModel(
          text: "14.40 Kahve Makinası acildi",
          imagePath: ImageConstants.instance.getKahve),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
      HistoryModel(
          text: "14.00 Buzdolabı açıldı",
          imagePath: ImageConstants.instance.getBuzdolabi),
    ];
  }
}
