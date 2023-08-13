import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController
{
goToPageLogin();
}

class SuccessResetPassworControllerImp extends SuccessSignUpController
{
  @override
  goToPageLogin() {
   
   Get.offNamed(AppRoute.login);
  }


}