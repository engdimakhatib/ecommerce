
import 'package:flutter/material.dart';
import 'package:flutter_application_2/controller/test_controller.dart';
import 'package:flutter_application_2/core/constant/color.dart';
import 'package:get/get.dart';
import '../core/class/handlingdataview.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title:  const Text("Title"),backgroundColor: AppColor.primaryColor,),
      body: GetBuilder<TestController>(builder: (controller){
    

       return HandlingDataView(
         statusRequest:controller.statusRequest,
       widget:  ListView.builder(
            itemCount: controller.data.length,
            itemBuilder: (BuildContext context, int index) {
              return Text("${controller.data}");
            },
          )
       );

    }  ));}}
       