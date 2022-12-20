import 'package:get/get.dart';

import '../model/model.dart';

class PersonController extends GetxController 
{
  Rx<Model> myModel = Model(name: "محمد", family: "کلان").obs;
}