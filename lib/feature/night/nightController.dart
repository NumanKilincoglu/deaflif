import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/feature/main/menu_model.dart';
import 'package:get/get.dart';
import '../../core/sharedModels/deviceModel.dart';

class NightController extends GetxController {
  List<MenuModel> mock = <MenuModel>[].obs;
  RxBool sabah = false.obs;
  RxBool aksam = false.obs;
  RxBool aksamRutini = false.obs;
  RxString zaman = "9.00 AM".obs;

  @override
  void onInit() {
    mock = [
      MenuModel(
          id: 0,
          text: "",
          vibrationExists: false.obs,
          name: "",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getCihazEkleYeni,
          switcher: false.obs,
          vibrationStatus: false.obs),
      MenuModel(
          id: 1,
          name: "Kahve Makinesi",
          switchBar: "String imagePath",
          text: "",
          imagePath: ImageConstants.instance.getKahve,
          switcher: false.obs,
          vibrationStatus: true.obs,
          vibrationExists: true.obs),
      MenuModel(
          id: 2,
          name: "Kapı Zili",
          switchBar: "String imagePath",
          text: "",
          imagePath: ImageConstants.instance.getZil,
          switcher: false.obs,
          vibrationStatus: false.obs,
          vibrationExists: false.obs),
      MenuModel(
          id: 3,
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

  void setVibration(int id) {
    print(id);
    for (var i = 0; i < mock.length; i++) {
      if (mock[i].id == id) {
        mock[i].vibrationStatus.value = !mock[i].vibrationStatus.value;
        break;
      }
    }
  }
}
