import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/forgetpassword/resetpassword_controller.dart';
import 'package:get/get.dart';
import '../../../../core/class/handlingdataview.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/validinput.dart';
import '../../../widget/auth/custombuttomauth.dart';
import '../../../widget/auth/customtextbody.dart';
import '../../../widget/auth/customtextformauth.dart';
import '../../../widget/auth/customtextformtitle.dart';



class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
Get.put(ResetPasswordControllerImp());

    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
         backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        elevation : 0.0,
        title : Text("36".tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),

      body : GetBuilder<ResetPasswordControllerImp>(
        builder: (controller)=>
 HandlingDataRequest( 
 statusRequest: controller.statusRequest!,
      widget:  Container(
        padding : const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: ListView(
          children: [
             CustomTextTitleAuth(text:"37".tr),
             const SizedBox(height: 10,),
          CustomTextBody( text: "38".tr,),
          const  SizedBox(height: 15,),
  GetBuilder<ResetPasswordControllerImp>(builder: (controller) =>
              CustomTextFormAuth(
                valid: (val){return validInput(val!, 5, 30, "password");  },
              hinText: "16".tr,
              labelText:  "17".tr,
              iconData: Icons.lock,  
              myController: controller.password,  
               obsecuretext: controller.isshowpassword,
              onTapIcon: (){controller.showpassword();},
               isNumber: false,         
            ),
  ),
 const  SizedBox(height: 15,),
GetBuilder<ResetPasswordControllerImp>(builder: (controller) =>
              CustomTextFormAuth(
                valid: (val){ return validInput(val!, 5, 30, "password"); },
              hinText: "40".tr,
              labelText:  "57".tr,
              iconData: Icons.lock,  
              myController: controller.repassword,  
              obsecuretext: controller.isshowrepassword,
              onTapIcon: (){controller.showrestpassword();},
               isNumber: false,         
            ),
),
 const  SizedBox(height: 15,),
      CustomButtomAuth(text: "39".tr,onPressed: () { 
        controller.goToSuccessResetPassword(); 
      },),
      
          ],
        ),
      ),
      ),
     ),
    );
  }
}