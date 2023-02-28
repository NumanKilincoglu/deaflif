import 'package:get/state_manager.dart';

class MenuModel {
  String text;
  String imagePath;
  String switchBar;
  RxBool switcher;

  MenuModel(
      {required this.switchBar, required this.text, required this.imagePath, required this.switcher});
}
