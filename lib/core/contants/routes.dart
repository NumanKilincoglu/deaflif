import 'package:deaflif/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature/login/loginView.dart';
import '../../feature/main/mainView.dart';
import '../../feature/history/historyView.dart';
import '../../feature/addDevice/addDeviceView.dart';
import '../../feature/morning/morningView.dart';
import '../../feature/night/nightView.dart';
import '../../feature/vibration/vibrationView.dart';

class RouteNames {
  static String LOGIN_PAGE = "/loginPage";
  static String MAIN_PAGE = "/mainPage";
  static String HISTORY_PAGE = "/historyPage";
  static String ADD_DEVICE_PAGE = "/addDevicePage";
  static String MORNING_PAGE = "/morningPage";
  static String NIGHT_PAGE = "/nightPage";
  static String VIBRATION_PAGE = "/vibrationPage";

  static String getLoginPage() => LOGIN_PAGE;

  static String getMainPage() => MAIN_PAGE;

  static String getHistoryPage() => HISTORY_PAGE;

  static String getAddDevicePage() => ADD_DEVICE_PAGE;

  static String getMorningPage() => MORNING_PAGE;

  static String getNightPage() => NIGHT_PAGE;

  static String getVibrationPage() => VIBRATION_PAGE;

  static List<GetPage> routes = [
    GetPage(name: LOGIN_PAGE, page: () => LoginPage()),
  ];
}
