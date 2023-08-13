import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/resetpassword.dart';

abstract class  ResetPasswordController extends GetxController
{
resetpassword();
goToSuccessResetPassword();
showpassword();
showrestpassword();
}
class ResetPasswordControllerImp extends ResetPasswordController
{
String? email;
 late TextEditingController password;
 late TextEditingController repassword;
GlobalKey<FormState> formState = GlobalKey<FormState>();
ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
bool isshowpassword = true;
bool isshowrepassword = true;
StatusRequest? statusRequest;

  @override
showpassword()
 {
  isshowpassword = !isshowpassword;
  update();
 }
 
   @override
showrestpassword()
 {
  isshowrepassword = !isshowrepassword;
  update();
 }
 
  @override
   resetpassword() {}
  
  @override
  goToSuccessResetPassword() async {
    if(password.text != repassword.text) 
    {  return Get.defaultDialog(title : "warning" , middleText: "password not match"); }
  
    if(formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      Get.offNamed(AppRoute.successResetPassword);
var response = await resetPasswordData.postData(email!, password.text );
statusRequest = handlingData(response);
if(StatusRequest.success == statusRequest)
{
  if(response['status'] == "success")
  {
    Get.offNamed(AppRoute.successResetPassword);
  }
  else{
    Get.defaultDialog(title : "warning" , middleText: "try again");
    statusRequest = StatusRequest.failure;
  }
}
update();
    }
else
{

}
    }
  

@override
void onInit() {
email = Get.arguments['email'];
  password = TextEditingController();
 repassword = TextEditingController();
  super.onInit();
  }
  @override
  void dispose() {
   password.dispose();
   repassword.dispose();
    super.dispose();
  }
}