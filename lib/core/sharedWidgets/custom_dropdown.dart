import 'package:deaflif/core/contants/text_styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import '../contants/decorations.dart';

Container CustomDropdown(Color color, double height, String type,
    List<String> liste, RxString secilen) {
  return Container(
    height: height,
    decoration: CustomDecoration.instance.dropdownBorder,
    child: Obx(
      () => DropdownButton<String>(
        alignment: Alignment.centerLeft,
        hint: Text(
          textAlign: TextAlign.start,
          type,
          style: TextStyles.S_W_18,
        ),
        elevation: 0,
        dropdownColor: Colors.black,
        icon: Padding(
          padding: const EdgeInsets.only(right: 15.0, top: 10),
          child: Transform.rotate(
            angle: 270 * math.pi / 180,
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        borderRadius: BorderRadius.circular(8),
        underline: Container(color: Colors.white),
        isExpanded: true,
        value: secilen.value,
        items: liste.map(
          (item) {
            return DropdownMenuItem(
              alignment: Alignment.centerLeft,
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(item, style: TextStyles.S_W_18),
              ),
            );
          },
        ).toList(),
        onChanged: (value) {
          if (kDebugMode) {
            print(value);
            secilen.value = value ?? "";
          }
        },
      ),
    ),
  );
}
