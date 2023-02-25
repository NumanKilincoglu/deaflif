import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Measurement {
  static Measurement? _instance;

  static Measurement get instance => _instance ??= Measurement._init();

  Measurement._init();

  //genislikler
  double P_01_W = Get.width * 0.01;
  double P_0125_W = Get.width * 0.14;
  double P_15_w = Get.width * 0.15;
  double P_20_W = Get.width * 0.2;
  double P_30_W = Get.width * 0.3;

  //yukseklikler
  double P_15_H = Get.height * 0.15;
  double P_35_H = Get.height * 0.35;
  double percent85Height = Get.height * 0.85;
}

mixin Paddings {
  final symHoriz2 = const EdgeInsets.symmetric(horizontal: 2);
  final symHoriz4 = const EdgeInsets.symmetric(horizontal: 4);
  final symHoriz6 = const EdgeInsets.symmetric(horizontal: 6);
  final symHoriz8 = const EdgeInsets.symmetric(horizontal: 8);
  final symHoriz10 = const EdgeInsets.symmetric(horizontal: 10);
  final symHoriz12 = const EdgeInsets.symmetric(horizontal: 12);
  final symHoriz14 = const EdgeInsets.symmetric(horizontal: 14);
  final symHoriz16 = const EdgeInsets.symmetric(horizontal: 16);
  final symHoriz18 = const EdgeInsets.symmetric(horizontal: 18);
  final symHoriz20 = const EdgeInsets.symmetric(horizontal: 20);
  final symHoriz25 = const EdgeInsets.symmetric(horizontal: 25);
  final symHoriz30 = const EdgeInsets.symmetric(horizontal: 30);

  final symVer2 = const EdgeInsets.symmetric(vertical: 2);
  final symVer4 = const EdgeInsets.symmetric(vertical: 4);
  final symVer6 = const EdgeInsets.symmetric(vertical: 6);
  final symVer8 = const EdgeInsets.symmetric(vertical: 8);
  final symVer10 = const EdgeInsets.symmetric(vertical: 10);
  final symVer12 = const EdgeInsets.symmetric(vertical: 12);
  final symVer14 = const EdgeInsets.symmetric(vertical: 14);
  final symVer16 = const EdgeInsets.symmetric(vertical: 16);
  final symVer18 = const EdgeInsets.symmetric(vertical: 18);
  final symVer20 = const EdgeInsets.symmetric(vertical: 20);
  final onlyBot5 = const EdgeInsets.only(bottom: 5.0);

  final onlyLeft4 = const EdgeInsets.only(left: 4.0);
  final onlyLeft10 = const EdgeInsets.only(left: 10.0);
  final onlyLeft15 = const EdgeInsets.only(left: 15.0);
  final onlyLeft20 = const EdgeInsets.only(left: 20.0);
  final onlyLeft30 = const EdgeInsets.only(left: 30.0);

  final onlyRight15 = const EdgeInsets.only(right: 10.0);
  final onlyBot12 = const EdgeInsets.only(bottom: 12.0);
  final onlyBot10 = const EdgeInsets.only(bottom: 10.0);

  final onlyTop10 = const EdgeInsets.only(top: 10);

  final all15 = const EdgeInsets.all(15);
  final all20 = const EdgeInsets.all(20);
  final all10 = const EdgeInsets.all(10);
  final all8 = const EdgeInsets.all(8);
  final all6 = const EdgeInsets.all(6);
  final all5 = const EdgeInsets.all(5);
  final all4 = const EdgeInsets.all(4);
  final all2 = const EdgeInsets.all(2);

  final ver0Hor6 = const EdgeInsets.symmetric(vertical: 0, horizontal: 6);
  final verHor42 = const EdgeInsets.symmetric(vertical: 2, horizontal: 4);
  final ver4Hor10 = const EdgeInsets.symmetric(vertical: 4, horizontal: 10);
  final top6Hor6 = const EdgeInsets.only(top: 6, right: 6, left: 6);

  double low5 = 5;
  double low8 = 8;
  double low10 = 10;
  double mid12 = 12;
  double mid15 = 15;
  double high35 = 35;
  double high40 = 40;
  double high45 = 45;
  double high50 = 50;
  double high55 = 55;
  double high60 = 60;
}

mixin Heights {
  double height5 = 5;
  double height8 = 8;
  double height10 = 10;
  double height12 = 12;
  double height15 = 15;
  double height40 = 40;
  double height45 = 45;
  double height50 = 50;
  double height55 = 55;
  double height60 = 60;
}

mixin Durations {
  Duration graphDuration200 = const Duration(milliseconds: 200);
  Duration graphDuration50 = const Duration(milliseconds: 50);
}
