import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:get/get.dart';
import '../../controller/onboarding_controller.dart';
import '../widget/onboarding/dotcontroller.dart';
import '../widget/onboarding/custombutton.dart';
import '../widget/onboarding/customslider.dart';

//استماع من الكونترولر
class OnBoarding extends GetView<OnBoadingControllerImp>{
  const OnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    //حقن للكونترول
  Get.put(OnBoadingControllerImp());
    return  const Scaffold(
      backgroundColor: AppColor.backgroundcolor,
     body:  SafeArea(
      child: Column( children: [
       Expanded( flex:3,  child: CustomSliderOnBoarding() ),
SizedBox(height: 10,),
            Expanded(
               flex:1, 
              child: Column( 
                children: [
SizedBox(height: 10,),
        CustomDotControllerOnBoarding(),
        Spacer(flex:2),
        CustomButtonOnBoarding(),
             ],),
            ),

          ], ), 
     ),
    );
  }
}