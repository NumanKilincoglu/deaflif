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
          id: 0,
          name: "",
          switchBar: "String imagePath",
          text: "Sabah rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getSabah,
          switcher: false.obs,
          vibrationStatus: false.obs,
          vibrationExists: false.obs),
      MenuModel(
          id: 1,
          name: "",
          switchBar: "String imagePath",
          text: "Gece rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getGece,
          switcher: false.obs,
          vibrationStatus: true.obs,
          vibrationExists: false.obs),
      MenuModel(
          id: 2,
          name: "Işık",
          switchBar: "String imagePath",
          text: "String switchBar",
          imagePath: ImageConstants.instance.getIsik,
          switcher: false.obs,
          vibrationStatus: false.obs,
          vibrationExists: false.obs),
      MenuModel(
          id: 3,
          name: "Kahve Makinesi",
          switchBar: "String imagePath",
          text: "Sabah rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getKahve,
          switcher: false.obs,
          vibrationStatus: true.obs,
          vibrationExists: true.obs),
      MenuModel(
          id: 4,
          name: "Kapı Zili",
          switchBar: "String imagePath",
          text: "Gece rutininin başlamasına 4 saat 18 dakika kaldı",
          imagePath: ImageConstants.instance.getZil,
          switcher: false.obs,
          vibrationStatus: false.obs,
          vibrationExists: false.obs),
      MenuModel(
          id: 5,
          name: "Mikrodalga",
          switchBar: "String imagePath",
          text: "String switchBar",
          imagePath: ImageConstants.instance.getMikrodalga,
          switcher: false.obs,
          vibrationStatus: true.obs,
          vibrationExists: true.obs),
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

  void setVibration(int id) {
    for (var i = 0; i < fakeModel.length; i++) {
      if (fakeModel[i].id == id) {
        fakeModel[i].vibrationStatus.value =
            !fakeModel[i].vibrationStatus.value;
        break;
      }
    }
  }
}
