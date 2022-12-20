import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/person_controller.dart';
import 'package:getx/view/person_screen.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  PersonController personController = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx((() {
            return Column(
              children: [
                Text(
                  personController.myModel.value.name,
                  style: const TextStyle(fontSize: 40),
                ),
                Text(
                  personController.myModel.value.family,
                  style: const TextStyle(fontSize: 40),
                ),
              ],
            );
          })),
          ElevatedButton(
              onPressed: () {
                personController.myModel.update((val) {
                  val!.name = "هادی";
                  val.family = "مختار";
                });
              },
              child: const Icon(Icons.add)),
          ElevatedButton(
              onPressed: () {
                Get.to(PersonScreen());
              },
              child: const Icon(Icons.arrow_forward)),
        ],
      )),
    );
  }
}
