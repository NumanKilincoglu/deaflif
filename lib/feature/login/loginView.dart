import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      height: context.mediaQuery.size.height,
      width: context.mediaQuery.size.width,
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      child: Column(
        children: const [
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: Text(
              "GİRİŞ YAP",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
          ),
          Expanded(
            flex: 4,
            child: Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}
