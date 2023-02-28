import 'package:deaflif/core/contants/app_colors.dart';
import 'package:deaflif/core/contants/measurements.dart';
import 'package:deaflif/core/contants/text_styles.dart';
import 'package:deaflif/feature/history/historyController.dart';
import 'package:deaflif/feature/history/historyModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/sharedWidgets/sharedWidgets.dart';
import '../../core/contants/gradients.dart';

class HistoryView extends StatelessWidget {
  HistoryView({Key? key}) : super(key: key);
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerCustom(size: size),
      appBar: SharedWidgets.appBarCustom(size),
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
      decoration:
          BoxDecoration(gradient: Gradients.instance.LoginPageGradients),
      height: Get.height,
      width: Get.width,
      child: ListViewBuilder(),
    );
  }
}

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({
    Key? key,
  }) : super(key: key);
  final HistoryController _historyController = Get.put(HistoryController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.only(top: 40),
        shrinkWrap: true,
        itemCount: _historyController.fakeHistory.length,
        itemBuilder: (BuildContext context, int index) {
          return buildCard(_historyController.fakeHistory[index]);
        });
  }
}

Widget buildCard(HistoryModel model) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: Measurement.instance.P_05_W, vertical: 2),
    child: ClipRRect(
      child: SizedBox(
        height: 90,
        child: Card(
          color: AppColors.HISTORY_TILE,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  leading: Text(model.text, style: TextStyles.S_W_20),
                  trailing: SizedBox(
                    height: 60,
                    width: 60,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        model.imagePath,
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                ),
              ),
              //const Icon(Icons.arrow_forward_ios, color: Colors.blue),
            ],
          ),
        ),
      ),
    ),
  );
}
