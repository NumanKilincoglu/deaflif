import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/contants/routes.dart';

Future<void> main() async {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: const Locale("tr", "TR"),
      theme: ThemeData(),
      initialRoute: RouteNames.getAddDevicePage(),
      getPages: RouteNames.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
