import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import '../../../../core/constant/color.dart';
import '../../../controller/auth/verifycodesignup_controller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextformtitle.dart';


class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
 Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation : 0.0,
        title : Text("32".tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),

      body : GetBuilder<VerifyCodeSignUpControllerImp>(
        builder: (controller)  =>
   HandlingDataRequest( 
 statusRequest: controller.statusRequest!,
      widget:  Container(
        padding : const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children: [
             CustomTextTitleAuth(text:"33".tr),
             const SizedBox(height: 10,),

        CustomTextBody( text: "35".tr,),

          const  SizedBox(height: 15,),
        

OtpTextField(
  fieldWidth: 50,
  borderRadius: BorderRadius.circular(20),
        numberOfFields: 5,
        borderColor: const Color(0xFF512DA8),
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
        
              controller.goToSuccessSignUp(verificationCode);
                //  showDialog(
                // context: context,
                // builder: (context){
                // return AlertDialog(
                //     title: const Text("Verification Code"),
                //     content: Text('Code entered is $verificationCode'),
              //  );
                //}
           // );
        }, // end onSubmit
    ),
    
    
          ],
        ),
      ),
   ),
      ),
    );
  }
}