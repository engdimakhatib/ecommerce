import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/forgetpassword/forgetpassword_controller.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttomauth.dart';
import '../../../widget/auth/customtextbody.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtextformtitle.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
Get.put(ForgetPasswordControllerImp());
    return Scaffold(
       backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation : 0.0,
        title : Text('19'.tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),

      body : GetBuilder<ForgetPasswordControllerImp>(
        builder: (controller)=>
    HandlingDataRequest( 
 statusRequest: controller.statusRequest!,
      widget:  Container(
        padding : const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children: [
             CustomTextTitleAuth(text:"30".tr),
             const SizedBox(height: 10,),
          CustomTextBody( text: "34".tr,),
          const  SizedBox(height: 15,),
 CustomTextFormAuth(
  valid: (val){return validInput(val!, 5, 100, "email"); },
              hinText: "14".tr,
              labelText:  "15".tr,
              iconData: Icons.email_outlined, 
              myController: controller.email,  
               isNumber: false,          
            ),
          const  SizedBox(height: 15,),   
      CustomButtomAuth(text: "31".tr,onPressed: () {controller.checkemail(); },),
          ],
        ),
      ),
      ),
      ),
    );
  }
}