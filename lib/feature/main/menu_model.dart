import 'package:get/state_manager.dart';

class MenuModel {
  String name;
  String text;
  String imagePath;
  String switchBar;
  RxBool switcher;
  RxBool vibrationStatus;

  MenuModel(
      {required this.vibrationStatus,
      required this.name,
      required this.switchBar,
      required this.text,
      required this.imagePath,
      required this.switcher});
}
