import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp()
{
   Get.defaultDialog(

    title: "53".tr,
    middleText: "54".tr,
    actions: [
      ElevatedButton(onPressed: (){exit(0);}, child:  Text('55'.tr),),
      ElevatedButton(onPressed: (){Get.back();}, child:  Text('56'.tr),),
    ]
  );
  return Future.value(true);
}
//لأننا سنستدعيها داخل
//WillPopScope
//و التي هي onWillPop  بأجرائية
//Future bool
/*
 alertExitApp()
{
  return Get.defaultDialog(

    title: "تنبيه",
    middleText: "هل تريد الخروج من التطبيق ؟",
    actions: [
      ElevatedButton(onPressed: (){exit(0);}, child: const Text("Yes"),),
      ElevatedButton(onPressed: (){Get.back();}, child: const Text("No"),),
    ]
  );

}
 */