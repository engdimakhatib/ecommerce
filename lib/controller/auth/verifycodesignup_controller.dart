
import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../data/datasource/remote/auth/verifycodesignup.dart';

abstract class  VerifyCodeSignUpController extends GetxController
{
goToSuccessSignUp(verifyCodeSignUp);
checkCode();
}


class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController
{
VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
late String verifycode;
String? email;
 StatusRequest? statusRequest ;


  @override
checkCode(){}

  @override
  goToSuccessSignUp(verifyCodeSignUp) async{
  statusRequest = StatusRequest.loading;
  update();
  var response = await verifyCodeSignUpData.postData(email!,verifyCodeSignUp);
  statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
    // data.addAll(response['data']);
    Get.offNamed(AppRoute.successSignUp);
    }
   //لا يوجد بيانات
    else
    {
      Get.defaultDialog(
        title: "Warning" ,
      middleText: "Verify Code Not Corret");
    statusRequest=StatusRequest.failure;
    }
  }
  update();
  }


@override
  void onInit() {
 email  = Get.arguments['email'];
    super.onInit();
  }


}