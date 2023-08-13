
import 'package:flutter_application_2/core/class/statusrequest.dart';
import 'package:flutter_application_2/data/remote/test_data.dart';
import 'package:get/get.dart';

import '../core/functions/handlingDatacontroller.dart';

class TestController extends GetxController{
  
TestData testData = TestData(Get.find());
List data = [];
late StatusRequest statusRequest;
getData() async
{
  statusRequest = StatusRequest.loading;
  var response = await testData.getData();
  statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
      data.addAll(response['data']);
    }
   //لا يوجد بيانات
    else
    {
    statusRequest=StatusRequest.failure;
    }
  }
  update();
}
@override
  void onInit() {
 getData();
    super.onInit();
  }
}