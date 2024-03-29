import 'package:flutter/material.dart';

class CustomDecoration {
  static CustomDecoration? _instance;

  static CustomDecoration get instance =>
      _instance ??= CustomDecoration._init();

  CustomDecoration._init();

  final InputBorder textfieldBorderC8 =
      OutlineInputBorder(gapPadding: 4, borderRadius: BorderRadius.circular(8));

  final textErrC8 = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 5));

  final textErrC30 = const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 5));

  final focusedC30 = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.black, width: 1));

  final ShapeBorder rounded10Circular = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    side: const BorderSide(width: 1, color: Colors.white),
  );

  final ShapeBorder roundedBordered = const RoundedRectangleBorder(
      side: BorderSide(width: 1, color: Colors.white));

  final box30Circular = BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Color.fromRGBO(0, 0, 0, 0.25));


  final box30Circular_W = BoxDecoration(
      borderRadius: BorderRadius.circular(30), color: Colors.white);

  final box100Circular = BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color.fromRGBO(0, 0, 0, 0.25));

  final rounded25C =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(25));

  final rounded8Circular =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  final roundedC12 =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(12));

  final rounded6Circular =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(6));

  final roundedTopC25 = const RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(25),
      topLeft: Radius.circular(
        25,
      ),
    ),
  );

  final shared30Border = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.circular(30),
    gapPadding: 10,
  );

  final loginInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.5),
  );

  final outlinedC30 = InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)));

  final dropdownBorder = BoxDecoration(
      border: Border.all(width: 2, color: Colors.white),
      color: Color.fromRGBO(38, 26, 26, 0.25));
}
