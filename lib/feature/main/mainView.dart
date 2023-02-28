import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/core/contants/measurements.dart';
import 'package:deaflif/core/contants/routes.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:deaflif/feature/main/mainController.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../core/contants/app_strings.dart';
import '../../core/contants/decorations.dart';
import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';
import 'menu_model.dart';

class MainView extends StatelessWidget {
  MainView({Key? key}) : super(key: key);
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
  final MainMenuController _controller = Get.put(MainMenuController());
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
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    AppStrings.DEAFLIF,
                    style: TextStyles.S_W_32,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      UstCard(menuModel: _controller.fakeModel[0], type: "ust"),
                      UstCard(menuModel: _controller.fakeModel[1], type: "ust"),
                    ],
                  ),
                ),
                for (var i = 2; i < _controller.fakeModel.length - 1; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        UstCard(
                            menuModel: _controller.fakeModel[i], type: "alt"),
                        UstCard(
                            menuModel: _controller.fakeModel[i + 1],
                            type: "alt"),
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
    required this.menuModel,
    required this.type,
  });

  final String type;
  final MenuModel menuModel;
  final MainMenuController _controller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: type == "ust"
          ? CustomDecoration.instance.box30Circular
          : CustomDecoration.instance.box30Circular_W,
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
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Obx(
                  () => Switch(
                    value: menuModel.switcher.value,
                    onChanged: (value) =>
                        _controller.setSwitch(menuModel.switcher),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [
                Text(
                  menuModel.text,
                  style: TextStyles.S_W_14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  GridCard({
    Key? key,
    required this.controller,
    required this.menuModel,
  });

  final MainMenuController controller;
  final MenuModel menuModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: CustomDecoration.instance.box30Circular,
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
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Obx(
                  () => Switch(
                    value: menuModel.switcher.value,
                    onChanged: (value) =>
                        controller.setSwitch(menuModel.switcher),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
