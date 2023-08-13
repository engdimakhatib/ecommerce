import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/auth/signup_controller.dart';

import 'package:get/get.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextformtitle.dart';
import '../../widget/auth/textsignuporsignin.dart';


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
 Get.put(SignUpControllerImp());
 //Get.lazyPut(() => SignUpControllerImp());

    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
        backgroundColor: AppColor.backgroundcolor,
        centerTitle: true,
        elevation : 0.0,
        title : Text("22".tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),

      body :// GetBuilder<SignUpControllerImp>(builder: (controller)=>
    WillPopScope(
         onWillPop: alertExitApp,
        child:
    GetBuilder<SignUpControllerImp>(
      builder: (controller)=>
    HandlingDataRequest( 
 statusRequest: controller.statusRequest!,
      widget:  Container(
        padding : const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
               CustomTextTitleAuth(text:"12".tr),
               const SizedBox(height: 10,),
            CustomTextBody( text: "28".tr,),
            const  SizedBox(height: 15,),
             CustomTextFormAuth(
              valid: (val){ return validInput(val! , 5,100,"username"); },
                hinText: "23".tr,
                labelText:  "24".tr,
                iconData: Icons.person_outline,
                myController: controller.username,       
                 isNumber: false,      
              ),
        
         CustomTextFormAuth(
          valid: (val){   return validInput(val! , 5 , 100 , "email"); },
                hinText: "14".tr,
                labelText:  "15".tr,
                iconData: Icons.email_outlined, 
                myController: controller.email,     
                 isNumber: false,       
              ),
             CustomTextFormAuth(
              valid: (val){   return null;},
                hinText: "25".tr,
                labelText:  "26".tr,
                iconData: Icons.phone_android_outlined,    
                myController: controller.phone, 
                 isNumber: true,        
              ),
              
                 GetBuilder<SignUpControllerImp>(builder: (controller) =>

              CustomTextFormAuth(
                valid: (val){ return validInput(val! , 5,30,"password");   },
                hinText: "16".tr,
                labelText:  "17".tr,
                iconData: Icons.lock,  
                myController: controller.password,     
                 isNumber: false,      
                  obsecuretext: controller.isshowpassword,
                 onTapIcon: (){controller.showpassword();},  
              ),
                 ),
           CustomTextBody( text: "13".tr,),
            const  SizedBox(height: 15,),
        
        
              CustomButtomAuth(text: "22".tr,onPressed: () { controller.signUp(); },),

          const SizedBox(height: 30,),
            TextSignUpOrSignIn(textone: "29".tr , texttwo: "20".tr  , onTap: () {controller.goToSignIn();  }),
            ],
          ),
        ),
      ),
    ),
      ),
    
   ),
    );
  }
}