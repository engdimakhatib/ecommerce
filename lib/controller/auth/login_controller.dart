import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../core/services/services.dart';
import '../../data/datasource/remote/auth/login.dart';

abstract class   LoginController extends GetxController
{
login();
goToSignUp();
goToForgetPassword();
showpassword();
}
class LoginControllerImp extends LoginController
{
  LoginData loginData = LoginData(Get.find());
 late  TextEditingController email;
 late TextEditingController password;
 GlobalKey<FormState> formstate = GlobalKey<FormState>();
 bool isshowpassword = true;
 StatusRequest? statusRequest = StatusRequest.none;
  MyServices myServices = Get.find();
 @override
  showpassword()
 {
  isshowpassword = !isshowpassword;
  update();
 }
 
  @override
  login() async{
  var formdata = formstate.currentState;
   if(formdata!.validate())
  {
 statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData( password.text,email.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
    // data.addAll(response['data']);
    Get.offNamed(AppRoute.homepage);
    }
   //لا يوجد بيانات
    else
    {
      Get.defaultDialog(title: "Warning"  ,middleText: "email or password not correct");
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
  goToSignUp() {Get.offNamed(AppRoute.signUp);}

@override
  void onInit() {
  email = TextEditingController();
  password = TextEditingController();
  super.onInit();
  }
  @override
  void dispose() {
   email.dispose();
   password.dispose();
    super.dispose();
  }
  
  @override
  goToForgetPassword() {Get.toNamed(AppRoute.forgetPassword);}
}