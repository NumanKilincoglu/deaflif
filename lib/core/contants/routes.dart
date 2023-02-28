import 'package:get/get.dart';

import '../../feature/login/loginView.dart';
import '../../feature/history/historyView.dart';
import '../../feature/addDevice/addDeviceView.dart';
import '../../feature/main/mainView.dart';
import '../../feature/morning/morningView.dart';
import '../../feature/night/nightView.dart';
import '../../feature/vibration/vibrationView.dart';

class RouteNames {
  static String LOGIN_PAGE = "/login";
  static String MAIN_PAGE = "/main";
  static String HISTORY_PAGE = "/history";
  static String ADD_DEVICE_PAGE = "/addDevice";
  static String MORNING_PAGE = "/morning";
  static String NIGHT_PAGE = "/night";
  static String VIBRATION_PAGE = "/vibration";

  static String getLoginPage() => LOGIN_PAGE;

  static String getMainPage() => MAIN_PAGE;

  static String getHistoryPage() => HISTORY_PAGE;

  static String getAddDevicePage() => ADD_DEVICE_PAGE;

  static String getMorningPage() => MORNING_PAGE;

  static String getNightPage() => NIGHT_PAGE;

  static String getVibrationPage() => VIBRATION_PAGE;

  static List<GetPage> routes = [
    GetPage(name: LOGIN_PAGE, page: () => LoginPage()),
    GetPage(name: MAIN_PAGE, page: () => MainView()),
    GetPage(name: HISTORY_PAGE, page: () => HistoryView()),
    GetPage(name: VIBRATION_PAGE, page: () => VibrationView()),
    GetPage(name: ADD_DEVICE_PAGE, page: () => AddDeviceView()),
  ];
}
