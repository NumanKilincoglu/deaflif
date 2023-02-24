import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contants/app_colors.dart';
import '../contants/routes.dart';
import '../contants/text_styles.dart';

class SharedWidgets {
  static AppBar appBarCustom(Size size) {
    return AppBar(
      elevation: 0,
      toolbarHeight: size.height * 0.07,
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: AppColors.MENU_BOTTOM_COLOR,
      title: Text(Get.currentRoute),
      automaticallyImplyLeading: true,
      titleSpacing: -10,
      actions: [],
    );
  }
}

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final drawerHeaderW = size.width * 0.2;
    final drawerHeaderH = size.height * 0.2;

    final List<ItemModel> itemListe = [
      ItemModel(
          icon: Icon(
            Icons.abc_outlined,
          ),
          routeName: RouteNames.getAddDevicePage(),
          isim: "Ana Menü"),
    ];

    List<Widget> drawerListe = [];

    List<Widget> createDraweItems() {
      drawerListe.add(
        SizedBox(
          height: drawerHeaderW,
          child: DrawerHeader(
            child: Icon(Icons.ac_unit),
          ),
        ),
      );
      for (var item in itemListe) {
        drawerListe.add(DrawerItemWidget(
            text: item.isim, icon: item.icon, route: item.routeName));
      }
      return drawerListe;
    }

    return Drawer(
      backgroundColor: AppColors.MENU_DRAWER_BACKGROUND,
      elevation: 5,
      width: size.width * 0.7,
      child: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: createDraweItems(),
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget(
      {required this.route, required this.text, required this.icon});

  final String route;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: ListTile(
        leading: icon,
        hoverColor: Colors.red,
        selectedColor: Colors.lightBlue,
        focusColor: Colors.tealAccent,
        title: Text(
          text,
          style: TextStyles.drawerItemTextStyle,
        ),
        onTap: () => Get.toNamed(route),
      ),
    );
  }
}

class ItemModel {
  String isim;
  String routeName;
  Icon icon;

  ItemModel({required this.isim, required this.routeName, required this.icon});
}
