import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/measurements.dart';
import 'package:deaflif/core/contants/routes.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../core/contants/app_strings.dart';
import '../../core/contants/decorations.dart';
import '../../core/contants/gradients.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double widthTextField = MediaQuery.of(context).size.width * 0.72;
    final double heightTextField = MediaQuery.of(context).size.width * 0.12;
    const double highPadding = 15.0;
    final double lowPadding = MediaQuery.of(context).size.width * 0.07;
    return Container(
      height: context.mediaQuery.size.height,
      width: context.mediaQuery.size.width,
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      child: Column(
        children: [
          const Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 1,
            child: Text(
              AppStrings.LOGIN_GIRIS_YAP_UPPER,
              style: TextStyles.S_W_32,
            ),
          ),
          Expanded(
            flex: 4,
            child: LoginForm(
                lowPadding: lowPadding,
                widthTextField: widthTextField,
                heightTextField: heightTextField,
                highPadding: highPadding),
          ),
          const Expanded(
            flex: 4,
            child: LoginButtonSection(),
          ),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

class LoginButtonSection extends StatelessWidget {
  const LoginButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SizedBox(
                  width: 160,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 2),
                    ),
                    onPressed: () =>
                        Get.offAndToNamed(RouteNames.getHistoryPage()),
                    child: Text(AppStrings.LOGIN_GIRIS_YAP,
                        style: TextStyles.S_W_24),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(
                  onPressed: null,
                  child: Text("Şifremi Unuttum?", style: TextStyles.S_W_16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.lowPadding,
    required this.widthTextField,
    required this.heightTextField,
    required this.highPadding,
  }) : super(key: key);

  final double lowPadding;
  final double widthTextField;
  final double heightTextField;
  final double highPadding;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Measurement.instance.P_0125_W),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppStrings.LOGIN_MAIL, style: TextStyles.S_W_24),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: Get.height * 0.05),
              child: FormTextField(
                  widthTextField: widthTextField,
                  heightTextField: heightTextField,
                  text: AppStrings.LOGIN_MAIL,
                  type: "mail"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Measurement.instance.P_0125_W),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppStrings.LOGIN_PASSWORD, style: TextStyles.S_W_24),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: FormTextField(
                  widthTextField: widthTextField,
                  heightTextField: heightTextField,
                  text: AppStrings.LOGIN_PASSWORD,
                  type: "sifre"),
            ),
          ],
        ),
      ),
    );
  }
}

class FormTextField extends StatelessWidget {
  FormTextField({
    Key? key,
    required this.text,
    required this.type,
    required this.widthTextField,
    required this.heightTextField,
  }) : super(key: key);

  final String text;
  final String type;
  final double widthTextField;
  final double heightTextField;

  @override
  Widget build(BuildContext context) {
    return type == "sifre"
        ? SizedBox(
            width: widthTextField,
            height: heightTextField,
            child: TextFormField(
              enabled: true,
              obscureText: true,
              style: TextStyles.S_W_24,
              decoration: InputDecoration(
                enabledBorder: CustomDecoration.instance.loginInputBorder,
                focusedBorder: CustomDecoration.instance.loginInputBorder,
                errorBorder: CustomDecoration.instance.loginInputBorder,
                focusedErrorBorder: CustomDecoration.instance.loginInputBorder,
                disabledBorder: CustomDecoration.instance.loginInputBorder,
                border: CustomDecoration.instance.loginInputBorder,
                hintText: "************",
                hintStyle: TextStyles.S_W_24_Fade,
                suffixIcon: IconButton(
                  icon: true
                      ? const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                        ),
                  onPressed: () => null,
                ),
              ),
            ),
          )
        : SizedBox(
            width: widthTextField,
            height: heightTextField,
            child: TextFormField(
              enabled: true,
              controller: null,
              style: TextStyles.S_W_24,
              decoration: InputDecoration(
                errorStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.red,
                  wordSpacing: 5.0,
                ),
                hintText: "user@email.com",
                hintStyle: TextStyles.S_W_24_Fade,
                enabledBorder: CustomDecoration.instance.loginInputBorder,
                focusedBorder: CustomDecoration.instance.loginInputBorder,
                errorBorder: CustomDecoration.instance.loginInputBorder,
                focusedErrorBorder: CustomDecoration.instance.loginInputBorder,
                disabledBorder: CustomDecoration.instance.loginInputBorder,
                border: CustomDecoration.instance.loginInputBorder,
              ),
            ),
          );
  }
}
