import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/app_strings.dart';
import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/core/contants/measurements.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:deaflif/core/sharedWidgets/custom_dropdown.dart';
import 'package:deaflif/feature/vibration/vibrationController.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../core/contants/decorations.dart';
import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';

class VibrationView extends StatelessWidget {
  VibrationView({Key? key}) : super(key: key);
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerCustom(size: size),
      appBar: SharedWidgets.appBarCustom(size),
      drawerScrimColor: Colors.black87,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final VibrationController _controller = Get.put(VibrationController());
  final EdgeInsets buttonMargin = EdgeInsets.only(top: 60, bottom: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: buttonMargin,
            decoration: CustomDecoration.instance.box100Circular,
            height: 200,
            width: 200,
            child: Image.asset(
              ImageConstants.instance.getParmakIzi,
              height: 80,
              width: 80,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Measurement.instance.P_15_w, vertical: 20),
            child: CustomDropdown(AppColors.DROPDOWN_BACKGROUND, 45, "",
                _controller.cihazListe, _controller.secilen),
          ),
          GestureDetector(
            onTap: () => _controller.setRun(),
            child: Container(
              margin: buttonMargin,
              color: AppColors.DROPDOWN_BACKGROUND,
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(
                    () => Image.asset(
                      _controller.isRunning.value
                          ? ImageConstants.instance.getDurdur
                          : ImageConstants.instance.getKayit,
                      height: 130,
                      width: 130,
                    ),
                  ),
                  Obx(
                    () => Text(
                      _controller.isRunning.value
                          ? AppStrings.STOP
                          : AppStrings.RECORD,
                      style: TextStyles.S_W_20,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
