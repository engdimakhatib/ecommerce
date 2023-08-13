import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static/static.dart';

class CustomSliderOnBoarding  extends GetView<OnBoadingControllerImp>{
  const CustomSliderOnBoarding({super.key});
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {controller.onPageChanged(val); },
                itemCount: onBoardingList.length,
                itemBuilder: (context , i) =>  Column(children:[
                Text(onBoardingList[i].title!.tr , style:  const TextStyle(fontSize: 18 , fontWeight: FontWeight.bold,color:AppColor.black),),
                const SizedBox(height: 80,),
                Image.asset( onBoardingList[i].image!,width : 100 , height:230,fit: BoxFit.fill,),
                 const SizedBox(height: 60,),
                 Expanded(
                   child: Container(
                    width : double.infinity,
                    alignment: Alignment.center,
                    child: Text(onBoardingList[i].body!.tr ,textAlign: TextAlign.center, style: const TextStyle(fontSize: 14 ,color: AppColor.grey,height: 2),)
                    ),
                 ),],
                ),
                );
  }
}