import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/person_controller.dart';

// ignore: must_be_immutable
class PersonScreen extends StatelessWidget {
  PersonScreen({super.key});
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
                  val!.name = "علی";
                  val.family = "مولوی";
                });
              },
              child: const Icon(Icons.add)),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back)),
        ],
      )),
    );
  }
}
