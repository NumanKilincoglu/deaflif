import 'package:deaflif/core/contants/app_strings.dart';
import 'package:deaflif/core/contants/decorations.dart';
import 'package:deaflif/core/contants/image_constans.dart';
import 'package:deaflif/core/sharedWidgets/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../contants/app_colors.dart';
import '../contants/routes.dart';
import '../contants/text_styles.dart';
import '../sharedControllers/custom_dropdown_controller.dart';
import 'back_button.dart';

class SharedWidgets {
  static AppBar appBarCustom(Size size) {
    return AppBar(
      centerTitle: false,
      titleTextStyle: TextStyles.S_W_24,
      elevation: 0,
      toolbarHeight: size.height * 0.05,
      iconTheme: const IconThemeData(size: 40, color: Colors.white),
      backgroundColor: AppColors.BACKGROUND,
      title: SizedBox(
        height: size.height * 0.05,
        width: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (Get.currentRoute != "/main")
              Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: BackButtonCustom(),
              ),
            Padding(
              padding: EdgeInsets.only(
                  top: 12.0, left: Get.currentRoute == "/main" ? 12.0 : 0),
              child: Text(
                getRouteName(),
                style: TextStyles.S_W_24,
              ),
            ),
          ],
        ),
      ),
      automaticallyImplyLeading: true,
      titleSpacing: -10,
    );
  }

  static getRouteName() {
    String name = Get.currentRoute;
    print(name);
    return name == "/main"
        ? "Ana Menü"
        : name == "/history"
            ? "Geçmiş"
            : name == "/addDevice"
                ? "Cihaz Ekle"
                : name == "/morning"
                    ? "Sabah Rutini"
                    : name == "/night"
                        ? "Gece Rutini"
                        : name == "/vibration"
                            ? "Titreşim Ayarı"
                            : name == "/login"
                                ? "Giriş"
                                : name == "/deviceList"
                                    ? "Cihaz Listesi"
                                    : "";
  }
}

class DrawerCustom extends StatelessWidget {
  DrawerCustom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;
  final CustomDropdownController _controller =
      Get.put(CustomDropdownController());

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerListe = [
      Column(
        children: [
          Container(
            margin: const EdgeInsets.all(
              40,
            ),
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: const BorderRadius.all(
                Radius.circular(120),
              ),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset(
                ImageConstants.instance.getUser,
                height: 120,
                width: 120,
              ),
            ),
          ),
          Center(
            child: Text(
              AppStrings.WELCOME,
              style: TextStyles.S_W_32,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: CustomDropdown(AppColors.BACKGROUND, 50, "Ev1",
                _controller.evListe, _controller.secilen),
          ),
          const SizedBox(
            height: 20,
          ),
          DrawerItemWidget(
              text: "Cihaz Ekle",
              route: RouteNames.getAddDevicePage(),
              icon: ImageConstants.instance.getCihazEkle),
          DrawerItemWidget(
            text: "Ayarlar",
            route: RouteNames.getVibrationPage(),
            icon: ImageConstants.instance.getAyarlar,
          ),
          DrawerItemWidget(
            text: "Geçmiş",
            route: RouteNames.getHistoryPage(),
            icon: ImageConstants.instance.getGecmis,
          ),
          DrawerItemWidget(
            text: "Çıkış Yap",
            route: RouteNames.getMainPage(),
            icon: ImageConstants.instance.getCikis,
          ),
        ],
      ),
    ];

    return Drawer(
      backgroundColor: AppColors.BACKGROUND,
      elevation: 12,
      width: size.width * 0.8,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: drawerListe,
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {required this.route, required this.text, required this.icon});

  final String route;
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 12),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: CustomDecoration.instance.box30Circular,
          child: Image.asset(
            icon,
            height: 24,
            width: 24,
          ),
        ),
        hoverColor: Colors.red,
        selectedColor: Colors.lightBlue,
        focusColor: Colors.tealAccent,
        title: Text(
          text,
          style: TextStyles.S_W_20,
        ),
        onTap: () {
          print(route);
          Get.toNamed(route);
        },
      ),
    );
  }
}
