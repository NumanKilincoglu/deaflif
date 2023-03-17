import 'package:deaflif/feature/addDevice/deviceModel.dart';
import 'package:get/get.dart';

import '../../core/contants/image_constans.dart';

class AddDeviceController extends GetxController {
  List<DeviceModel> cihazListe = <DeviceModel>[].obs;
  List<String> cihazKontrolListe = <String>["Evet", "Hayır"].obs;
  List<String> titresimListe = <String>["Titreşim Var", "Titreşim Yok"].obs;

  List<int> pattern = [1, 22, 33];
  late Rx<DeviceModel> secilenCihaz;
  late RxString cihazKontrolu;
  late RxString cihazTitresimDurumu;

  @override
  void onInit() {
    cihazListe = [
      DeviceModel(
        id: 1,
        name: "Buzdolabi",
        control: true,
        macAdress: "a123123ss",
        vibrationPattern: pattern,
        vibration: true,
        imagePath: ImageConstants.instance.getBuzdolabi,
      ),
      DeviceModel(
        id: 2,
        name: "Kahve Makinesi",
        control: true,
        macAdress: "attt223ss",
        vibrationPattern: pattern,
        vibration: true,
        imagePath: ImageConstants.instance.getKahve,
      ),
      DeviceModel(
        id: 3,
        name: "Işık",
        control: true,
        macAdress: "att123123t223ss",
        vibrationPattern: pattern,
        vibration: true,
        imagePath: ImageConstants.instance.getIsik,
      ),
      DeviceModel(
        id: 4,
        name: "Zil",
        control: false,
        macAdress: "233940153",
        vibrationPattern: pattern,
        vibration: false,
        imagePath: ImageConstants.instance.getZil,
      ),
    ];

    secilenCihaz = cihazListe[0].obs;
    cihazKontrolu = cihazKontrolListe[0].obs;
    cihazTitresimDurumu = titresimListe[0].obs;
  }

  getInt() {
    return DeviceModel(
      id: 6,
      name: "Zil",
      control: false,
      macAdress: "233940153",
      vibrationPattern: pattern,
      vibration: false,
      imagePath: ImageConstants.instance.getZil,
    );
  }
}
