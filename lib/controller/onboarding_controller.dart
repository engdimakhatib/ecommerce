import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/services/services.dart';
import 'package:get/get.dart';
import '../core/constant/routes.dart';
import '../data/datasource/static/static.dart';

abstract class OnBoadingController extends GetxController
{
  //Functions
  next();
  //لما بدي أتحرك بالباج فيو , كيف رح أعرف أنو أنا اتحركت ؟ 
  //الباج فيو تحتفظ برقم الصفحة التي نتحركها
  onPageChanged(int index);
}
class OnBoadingControllerImp extends OnBoadingController
{
  int currentPage = 0;
  late PageController pageController;
  //SharedPreferences  نجلب السيرفيس لأننا حقناه سابقا و نريد التعامل حاليا مع  
  MyServices myservices = Get.find();
  //انتقال لصفحة تالية , بالتالي نزيد رقم الصفحة ثم ننتقل
   @override
  next()
  {
    //ربط رقم الصفحة بالباج الفيو , بالميثود بالكونترولر
    currentPage++;
    if(currentPage > onBoardingList.length-1)
    {
      //MiddleWare سنخزن واحد , كي لا تعرض مرة أخرى و يجل عرضها مرة واحدة مثل صفحة اللغة , ذلك عبر  onboarding  عند تخطي صفحات 
      myservices.sharedpreferences.setString('onboarding', "1");
      //إيقاف كل الصفحات و الانتقال لصفخة تسجيل الدخول
      Get.offAllNamed(AppRoute.login);
    }
  else 
  {pageController.animateToPage(currentPage, duration:const Duration(milliseconds:900 ) , curve: Curves.easeInOut);}
  }
//جلب رقم الصفحة الحالية
   @override
  onPageChanged(int index)
  {
currentPage =index;
update();
  }

  @override
  void onInit() {
  pageController=PageController();
    super.onInit();
  }
}