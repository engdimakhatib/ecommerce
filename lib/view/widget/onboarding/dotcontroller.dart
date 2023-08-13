import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
  //سنعيد بناء العنصر, لأن الدوت ستصبح بعرض أكبر
  //refresh on UI   ستتم عملية
    return GetBuilder<OnBoadingControllerImp>
    (builder: (controller) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    ...List.generate(
                      onBoardingList.length, 
                      (index) =>  AnimatedContainer(
                        margin: const EdgeInsets.only(right: 5),
                        duration : const Duration(milliseconds: 900),
                      width: controller.currentPage == index  ? 20 : 5 ,
                      height: 6,
                      decoration: BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(10),),
                      ),),
            ],),
    );
  }
}