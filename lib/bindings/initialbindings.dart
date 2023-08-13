import 'package:flutter_application_2/core/class/crud.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings
{
  @override
  void dependencies() {
  Get.put(Crud());
  }

}