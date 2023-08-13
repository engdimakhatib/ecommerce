import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/checkemail.dart';


abstract class   ForgetPasswordController extends GetxController
{
checkemail();

}
class ForgetPasswordControllerImp extends ForgetPasswordController
{
  CheckEmailData checkEmailData = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
late  TextEditingController email;
 StatusRequest? statusRequest ;

  @override
   checkemail() async{
    if(formstate.currentState!.validate())
   {
  statusRequest = StatusRequest.loading;
  update();
  var response = await checkEmailData.postData(email.text );
  statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
    // data.addAll(response['data']);
    Get.offNamed(AppRoute.verifyCode , arguments: {"email" : email.text});
    }
   //لا يوجد بيانات
    else
    {
      Get.defaultDialog(title: "Warning" 
      ,middleText: "email  not found");
    statusRequest=StatusRequest.failure;
    }
  }
  update();
  }
  else
  {
//print("not valid");
  }
  }
  

@override
  void onInit() {
  email = TextEditingController();
 super.onInit();
  }
  @override
  void dispose() {
   email.dispose();
    super.dispose();
  }
}