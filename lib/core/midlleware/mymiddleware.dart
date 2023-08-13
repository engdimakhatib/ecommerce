import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/routes.dart';
import 'package:flutter_application_2/core/services/services.dart';
import 'package:get/get.dart';

class MyMiddleWare extends GetMiddleware
{
  @override
  int? get priority => 1 ;

MyServices myservices = Get.find();
    @override
      RouteSettings? redirect(String? route) 
      {

        if(myservices.sharedpreferences.getString("onboarding")=="1")
        {
          return const  RouteSettings(name: AppRoute.login);
        }
        return null;
      }
}