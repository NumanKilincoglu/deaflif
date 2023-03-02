import 'package:deaflif/core/contants/image_constans.dart';
import 'package:get/get.dart';
import '../../core/sharedModels/deviceModel.dart';

class NightController extends GetxController {
  List<DeviceModel> fakeModel = <DeviceModel>[].obs;
  RxBool sabah = false.obs;
  RxBool aksam = false.obs;
  RxBool aksamRutini = false.obs;

  @override
  void onInit() {
    fakeModel = [
      DeviceModel(
          name: "",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getCihazEkleYeni,
          switcher: false.obs,
          vibrationStatus: true.obs),
      DeviceModel(
          name: "",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getGece,
          switcher: false.obs,
          vibrationStatus: true.obs),
      DeviceModel(
          name: "Işık",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getIsik,
          switcher: false.obs,
          vibrationStatus: false.obs),
      DeviceModel(
          name: "Kahve Makinesi",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getKahve,
          switcher: false.obs,
          vibrationStatus: true.obs),
      DeviceModel(
          name: "Kapı Zili",
          switchBar: "String imagePath",
          imagePath: ImageConstants.instance.getZil,
          switcher: false.obs,
          vibrationStatus: false.obs),
      DeviceModel(
          name: "Mikrodalga",
          switchBar: "String imagePath",
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
}
