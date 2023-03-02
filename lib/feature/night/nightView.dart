import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:deaflif/feature/main/mainController.dart';
import 'package:deaflif/feature/morning/morningController.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../core/contants/app_strings.dart';
import '../../core/contants/decorations.dart';
import '../../core/sharedModels/deviceModel.dart';
import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';

class NightView extends StatelessWidget {
  NightView({Key? key}) : super(key: key);
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
  final MorningController _controller = Get.put(MorningController());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      height: Get.height,
      width: Get.width,
      child: Scrollbar(
        thickness: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        AppStrings.NIGHT,
                        style: TextStyles.S_W_24,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Transform.scale(
                        scale: 0.75,
                        child: Obx(
                          () => Switch.adaptive(
                            activeColor: AppColors.BACKGROUND,
                            inactiveTrackColor: Colors.white54,
                            value: _controller.sabahRutini.value,
                            onChanged: (value) =>
                                _controller.setSwitch(_controller.sabahRutini),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10),
                  child: Text(
                    AppStrings.NIGHT_TEXT,
                    style: TextStyles.S_W_16,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UstCard(deviceModel: _controller.fakeModel[0]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: <Widget>[
                      const Expanded(
                          child: Divider(color: Colors.white, thickness: 1)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          AppStrings.RUTIN,
                          style: TextStyles.S_W_16,
                        ),
                      ),
                      const Expanded(
                          child: Divider(color: Colors.white, thickness: 1)),
                    ],
                  ),
                ),
                for (var i = 2; i < _controller.fakeModel.length - 1; i += 2)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuCard(menuModel: _controller.fakeModel[i]),
                        MenuCard(menuModel: _controller.fakeModel[i + 1]),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UstCard extends StatelessWidget {
  UstCard({
    Key? key,
    required this.deviceModel,
  });
  final DeviceModel deviceModel;
  final MainMenuController _controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: CustomDecoration.instance.box30Circular_W,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 30,
                  child: Image.asset(
                    deviceModel.imagePath,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 100,
                child: Text(
                  AppStrings.CIHAZ_EKLE,
                  style: TextStyles.S_B_18,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              deviceModel.vibrationStatus.value
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8.0),
                      child: Image.asset(
                        ImageConstants.instance.getVibration,
                        height: 35,
                        width: 35,
                      ),
                    )
                  : const SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Transform.scale(
                  scale: 0.75,
                  child: Obx(
                    () => Switch.adaptive(
                      activeColor: AppColors.BACKGROUND,
                      inactiveTrackColor:
                          AppColors.BACKGROUND.withOpacity(0.25),
                      value: deviceModel.switcher.value,
                      onChanged: (value) =>
                          _controller.setSwitch(deviceModel.switcher),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  MenuCard({
    Key? key,
    required this.menuModel,
  });

  final DeviceModel menuModel;
  final MainMenuController _controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 180,
      decoration: CustomDecoration.instance.box30Circular_W,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 30,
                  child: Image.asset(
                    menuModel.imagePath,
                    height: 50,
                    width: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: Text(
                  menuModel.name,
                  style: TextStyles.S_B_18,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              menuModel.vibrationStatus.value
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8.0),
                      child: Image.asset(
                        ImageConstants.instance.getVibration,
                        height: 35,
                        width: 35,
                      ),
                    )
                  : const SizedBox(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Transform.scale(
                  scale: 0.75,
                  child: Obx(
                    () => Switch.adaptive(
                      activeColor: AppColors.BACKGROUND,
                      inactiveTrackColor:
                          AppColors.BACKGROUND.withOpacity(0.25),
                      value: menuModel.switcher.value,
                      onChanged: (value) =>
                          _controller.setSwitch(menuModel.switcher),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
