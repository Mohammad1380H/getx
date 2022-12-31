import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/person_controller.dart';

// ignore: must_be_immutable
class PersonScreenGetX extends StatelessWidget {
  const PersonScreenGetX({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetX(

//            init: PersonController(),
              builder: ((PersonController personController) {
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
                Get.find<PersonController>().myModel.update((val) {
                  val!.name = "قاسم";
                  val.family = "شمسی";
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
