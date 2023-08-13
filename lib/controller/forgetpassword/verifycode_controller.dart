import 'package:get/get.dart';
import '../../core/class/statusrequest.dart';
import '../../core/constant/routes.dart';
import '../../core/functions/handlingDatacontroller.dart';
import '../../data/datasource/remote/forgetpassword/verifycode.dart';

abstract class  VerifyCodeController extends GetxController
{
checkcode();
goToResetPassword(String verifycode);
}
class VerifyCodeControllerImp extends VerifyCodeController
{
 StatusRequest? statusRequest ;
  String? verifycode;
  String? email;
VerifyCodeForgetPasswordData verifyCodeForgetPasswordData =VerifyCodeForgetPasswordData(Get.find());
  @override
   checkcode() {
  }
  
  @override
  goToResetPassword(verifycode) async{
 statusRequest = StatusRequest.loading;
  update();
  var response = await verifyCodeForgetPasswordData.postData(email!,verifycode );
  statusRequest = handlingData(response);
  if(StatusRequest.success == statusRequest)
  {
    if(response['status']=="success") {
    // data.addAll(response['data']);
    Get.offNamed(AppRoute.resetPassword , arguments: {"email":email}) ;
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
   Get.offNamed(AppRoute.resetPassword);
  }
@override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }


}