import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/person_controller_get_builder.dart';
import 'package:getx/controller/person_controller_get_builder_with_unique_id.dart';
import '../controller/person_controller.dart';

// ignore: must_be_immutable
class PersonScreenGetBuilderWithUniqueId extends StatelessWidget {
  const PersonScreenGetBuilderWithUniqueId({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                Get.find<PersonControllerGetBuilderWithUniqueId>()
                    .updateModelData(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(border: Border.all()),
                  child: GetBuilder<PersonControllerGetBuilderWithUniqueId>(
                      id: index,
                      init: PersonControllerGetBuilderWithUniqueId(),
                      builder: ((PersonControllerGetBuilderWithUniqueId
                          personController) {
                        return Column(
                          children: [
                            Text(
                              "${personController.myModel.name}$index",
                              style: const TextStyle(fontSize: 40),
                            ),
                            Text(
                              personController.myModel.family,
                              style: const TextStyle(fontSize: 40),
                            ),
                          ],
                        );
                      })),
                ),
              ),
            );
          }),
        ),
      )),
    );
  }
}
