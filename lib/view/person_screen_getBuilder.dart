import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/person_controller_get_builder.dart';
import '../controller/person_controller.dart';

// ignore: must_be_immutable
class PersonScreenGetBuilder extends StatelessWidget {
  const PersonScreenGetBuilder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<PersonControllerGetBuilder>(
              init: PersonControllerGetBuilder(),
              builder: ((PersonControllerGetBuilder personController) {
                return Column(
                  children: [
                    Text(
                      personController.myModel.name,
                      style: const TextStyle(fontSize: 40),
                    ),
                    Text(
                      personController.myModel.family,
                      style: const TextStyle(fontSize: 40),
                    ),
                  ],
                );
              })),
          ElevatedButton(
              onPressed: () {
                Get.find<PersonControllerGetBuilder>().updateModelData();
              },
              child: const Icon(Icons.add)),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back)),
          ElevatedButton(
              onPressed: () {
                Get.delete<PersonControllerGetBuilder>();
              },
              child: const Icon(Icons.arrow_back)),
        ],
      )),
    );
  }
}
