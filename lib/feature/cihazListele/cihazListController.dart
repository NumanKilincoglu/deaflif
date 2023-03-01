import 'package:deaflif/feature/cihazListele/cihazModel.dart';
import 'package:get/get.dart';

import '../../core/contants/image_constans.dart';

class CihazListController extends GetxController {
  List<CihazListModel> fakeModel = <CihazListModel>[].obs;
  RxBool sabah = false.obs;
  RxBool aksam = false.obs;

  @override
  void onInit() {
    fakeModel = [
      CihazListModel(
        text: "Işıklar",
        imagePath: ImageConstants.instance.getSabah,
      ),
      CihazListModel(
        text: "Kahve Makinesi",
        imagePath: ImageConstants.instance.getGece,
      ),
      CihazListModel(
        text: "Kapı Zili",
        imagePath: ImageConstants.instance.getBuzdolabi,
      ),
      CihazListModel(
        text: "Çamaşır Makinesi",
        imagePath: ImageConstants.instance.getKahve,
      ),
      CihazListModel(
        text: "Buzdolabı",
        imagePath: ImageConstants.instance.getZil,
      ),
      CihazListModel(
        text: "Mikrodalga",
        imagePath: ImageConstants.instance.getIsik,
      ),
    ];
  }

  void setSabah() {
    sabah.value = !sabah.value;
  }

  void setAksam() {
    aksam.value = !aksam.value;
  }

  void setSwitch(RxBool switcher) {
    switcher.value = !switcher.value;
    print(switcher.value);
  }
}
