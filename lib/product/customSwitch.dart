import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({required this.switcher, required this.fun});

  late final RxBool switcher;
  late final Function(RxBool) fun;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Switch.adaptive(
        activeColor: Colors.lightGreen,
        inactiveTrackColor: Colors.white54,
        value: switcher.value,
        onChanged: (value) => fun(switcher),
      ),
    );
  }
}
