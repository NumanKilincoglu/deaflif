import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/feature/main/menu_model.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  List<MenuModel> fakeModel = <MenuModel>[].obs;
  RxBool sabah = false.obs;
  RxBool aksam = false.obs;

  @override
  void onInit() {
    fakeModel = [
      MenuModel(
          name: "",
          switchBar: "String imagePath",
          text: "Sabah rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getSabah,
          switcher: false.obs,
          vibrationStatus: false.obs),
      MenuModel(
          name: "",
          switchBar: "String imagePath",
          text: "Gece rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getGece,
          switcher: false.obs,
          vibrationStatus: true.obs),
      MenuModel(
          name: "Işık",
          switchBar: "String imagePath",
          text: "String switchBar",
          imagePath: ImageConstants.instance.getIsik,
          switcher: false.obs,
          vibrationStatus: false.obs),
      MenuModel(
          name: "Kahve Makinesi",
          switchBar: "String imagePath",
          text: "Sabah rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getKahve,
          switcher: false.obs,
          vibrationStatus: true.obs),
      MenuModel(
          name: "Kapı Zili",
          switchBar: "String imagePath",
          text: "Gece rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getZil,
          switcher: false.obs,
          vibrationStatus: false.obs),
      MenuModel(
          name: "Mikrodalga",
          switchBar: "String imagePath",
          text: "String switchBar",
          imagePath: ImageConstants.instance.getMikrodalga,
          switcher: false.obs,
          vibrationStatus: false.obs),
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

  void goRoute(String route) {
    Get.toNamed(route);
  }
}
