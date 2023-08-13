import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/auth/login_controller.dart';
import 'package:flutter_application_2/core/class/handlingdataview.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/alertexitapp.dart';
import '../../../core/functions/validinput.dart';
import '../../widget/auth/custombuttomauth.dart';
import '../../widget/auth/customtextbody.dart';
import '../../widget/auth/customtextformauth.dart';
import '../../widget/auth/customtextformtitle.dart';
import '../../widget/auth/logoauth.dart';
import '../../widget/auth/textsignuporsignin.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
  Get.put(LoginControllerImp());
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation : 0.0,
        title : Text("11".tr,style : Theme.of(context).textTheme.displayLarge!.copyWith(color : AppColor.grey)),
      ),
//مهمتها عند ضغط رجوع تشتغل
      body : WillPopScope(
         onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) =>
HandlingDataRequest( 
 statusRequest: controller.statusRequest!,
      widget:  Container(
        padding : const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        child: Form(
          key : controller.formstate,
          child: ListView(
            children: [
              const LogoAuth(),
               CustomTextTitleAuth(text:"12".tr,),
               const SizedBox(height: 10,),
            CustomTextBody( text: "13".tr,),
            const  SizedBox(height: 15,),
          
         CustomTextFormAuth(
          valid: (val){return validInput(val!, 5, 100, "email");},
                hinText: "14".tr,
                labelText:  "15".tr,
                iconData: Icons.email_outlined,      
                myController: controller.email,     
                 isNumber: false,  
              ),
              
          GetBuilder<LoginControllerImp>(builder: (controller) =>

              CustomTextFormAuth(
                valid: (val){return validInput(val!, 5, 30, "password");},
                hinText: "16".tr,
                labelText:  "17".tr,
                iconData: Icons.lock,   
                myController: controller.password,
                 isNumber: false,      
                 obsecuretext: controller.isshowpassword,
                 onTapIcon: (){controller.showpassword();},   
              ),

            ),
          InkWell(
        onTap: (){controller.goToForgetPassword();},
            child: Text("19".tr , textAlign: TextAlign.end,),        
            ),
              CustomButtomAuth(text: "20".tr,onPressed: () { controller.login(); },),
          const SizedBox(height: 30,),
            TextSignUpOrSignIn(textone: "21".tr , texttwo: "22".tr  , onTap: () { controller.goToSignUp();}),
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