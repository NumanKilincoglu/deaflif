import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BackButtonCustom extends StatelessWidget {
  BackButtonCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.back();
      },
      icon: Icon(
        size: 28,
        Icons.arrow_back_ios_sharp,
        color: Colors.white,
      ),
    );
  }
}
