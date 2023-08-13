import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:get/get.dart';
import '../../../../controller/auth/successresetpassword_controller.dart';
import '../../../widget/auth/custombuttomauth.dart';



class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller = Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation : 0.0,
        title : Text("43".tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),

      body: Container(
        padding: const EdgeInsets.all(15),
        child:  Column(
          children: [
           const Center(child:Icon(Icons.check_circle_outline , size : 200 , color : AppColor.primaryColor),) ,
           Text("....."),
           const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtomAuth(text: "44".tr,onPressed: () {
                controller.goToPageLogin(); 
                 },),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}