import 'package:get/get.dart';

class AddDeviceController extends GetxController {
  List<String> cihazListe = <String>["Kahve Makinesi", "Buzdolabi"].obs;
  List<String> cihazKontrolListe = <String>["Evet", "Hayır"].obs;
  List<String> titresimListe = <String>["Titreşim Var", "Titreşim Yok"].obs;

  late RxString secilenCihaz;
  late RxString cihazKontrolu;
  late RxString cihazTitresimDurumu;

  @override
  void onInit() {
    secilenCihaz = cihazListe[0].obs;
    cihazKontrolu = cihazKontrolListe[0].obs;
    cihazTitresimDurumu = titresimListe[0].obs;
  }
}
