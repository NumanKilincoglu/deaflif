import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/sharedWidgets/sharedWidgets.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SharedWidgets.appBarCustom(size),
      drawer: DrawerCustom(size: size),
      drawerScrimColor: Colors.black87,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("asdsadasd", ),
    );

  }
}