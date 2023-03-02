import 'package:get/state_manager.dart';

class DeviceModel {
  String name;
  String imagePath;
  String switchBar;
  RxBool switcher;
  RxBool vibrationStatus;

  DeviceModel(
      {required this.vibrationStatus,
      required this.name,
      required this.switchBar,
      required this.imagePath,
      required this.switcher});
}