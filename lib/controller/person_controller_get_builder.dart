import 'package:get/get.dart';

import '../model/model.dart';

class PersonControllerGetBuilder extends GetxController {
  Model myModel = Model(name: "محمد", family: "کلان");

  void updateModelData() {
    myModel = Model(name: "رشید", family: "پور فرجام");
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    print("inti");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    print("onReady");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print("Close");
  }
}
