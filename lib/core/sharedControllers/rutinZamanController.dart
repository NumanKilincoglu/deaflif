import 'dart:async';

import 'package:get/get.dart';

class RutinController extends GetxController {
  Timer? _timer;
  int remainingSeconds = 1;
  final time = '00.00'.obs;
  final saat = "9".obs;
  final dakika = "10".obs;

  RxString sabahRutinZaman = "9.00 AM".obs;
  RxString aksamRutinZaman = "9.00 PM".obs;
}
