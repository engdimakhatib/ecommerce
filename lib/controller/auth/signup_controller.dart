import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../data/datasource/remote/auth/signup.dart';

abstract class   SignUpController extends GetxController
{
signUp();
goToSignIn();
showpassword();
}
class SignUpControllerImp extends SignUpController
{
late  TextEditingController email;
 late TextEditingController password;
 late  TextEditingController username;
 late TextEditingController phone;
GlobalKey<FormState> formstate = GlobalKey<FormState>();
bool isshowpassword = true;
 StatusRequest? statusRequest  = StatusRequest.none;

SignupData signupData = SignupData(Get.find());
List data = [];

  @override
  showpassword()
 {
  isshowpassword = !isshowpassword;
  update();
 }

  @override
   signUp() async {
var formdata = formstate.currentState;
  if(formdata!.validate())
  {
   //Get.delete<SignUpControllerImp>();
//print("valid");
  statusRequest = StatusRequest.loading;
  update();
  var response = await signupData.postData(
username.text,
password.text,
email.text,
phone.text

  );
  statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
    // data.addAll(response['data']);
    Get.offNamed(AppRoute.verifyCodeSignUp, arguments :{
      "email":email.text
    });
    }
   //لا يوجد بيانات
    else
    {
      Get.defaultDialog(title: "Warning" ,middleText: "Phone Number Or Email Already Exists");
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
  goToSignIn() { Get.offNamed(AppRoute.login); }
  
@override
  void onInit() {
  email = TextEditingController();
  password = TextEditingController();
  username = TextEditingController();
  phone = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
   email.dispose();
   password.dispose();
   username.dispose();
   phone.dispose();
    super.dispose();
  }
}