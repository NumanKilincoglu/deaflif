import 'package:get/state_manager.dart';

class MenuModel {
  int id;
  String name;
  String text;
  String imagePath;
  String switchBar;
  RxBool switcher;
  RxBool vibrationStatus;
  RxBool vibrationExists;

  MenuModel(
      {required this.vibrationStatus,
      required this.id,
      required this.vibrationExists,
      required this.name,
      required this.switchBar,
      required this.text,
      required this.imagePath,
      required this.switcher});
}
