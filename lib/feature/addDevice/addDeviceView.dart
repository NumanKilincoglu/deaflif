import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/measurements.dart';
import 'package:deaflif/core/contants/routes.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:deaflif/feature/addDevice/addDeviceController.dart';
import 'package:deaflif/main.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../core/contants/app_strings.dart';
import '../../core/contants/decorations.dart';
import '../../core/sharedWidgets/custom_dropdown.dart';
import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';

class AddDeviceView extends StatelessWidget {
  AddDeviceView({Key? key}) : super(key: key);
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
  final AddDeviceController _controller = Get.put(AddDeviceController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      height: Get.height,
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Measurement.instance.P_10_W, vertical: 10),
            child: Text(
              AppStrings.DEVICE_NAME,
              style: TextStyles.S_W_20,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Measurement.instance.P_10_W),
            child: CustomDropdown(AppColors.DROPDOWN_BACKGROUND, 59, "",
                _controller.cihazListe, _controller.secilenCihaz),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Measurement.instance.P_10_W, vertical: 10),
            child: Text(
              AppStrings.DEVICE_CONTROL,
              style: TextStyles.S_W_20,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Measurement.instance.P_10_W),
            child: CustomDropdown(AppColors.DROPDOWN_BACKGROUND, 59, "",
                _controller.cihazKontrolListe, _controller.cihazKontrolu),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Measurement.instance.P_10_W, vertical: 10),
            child: Text(
              AppStrings.DEVICE_VIBRATION,
              style: TextStyles.S_W_20,
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Measurement.instance.P_10_W),
            child: CustomDropdown(AppColors.DROPDOWN_BACKGROUND, 59, "",
                _controller.titresimListe, _controller.cihazTitresimDurumu),
          ),
          const SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: SizedBox(
                width: 350,
                height: 80,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.DROPDOWN_BACKGROUND_DARK,
                    side: const BorderSide(color: Colors.white, width: 2),
                  ),
                  onPressed: () =>
                      Get.offAndToNamed(RouteNames.getHistoryPage()),
                  child:
                      Text(AppStrings.SAVE_AND_SET, style: TextStyles.S_W_24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
