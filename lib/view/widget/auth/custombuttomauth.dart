import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constant/color.dart';

class CustomButtomAuth extends StatelessWidget {
 final  String text;
final  void Function()? onPressed;
  const CustomButtomAuth({super.key , required this.text ,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 10,),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 13 ,),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),
        onPressed:onPressed,
     textColor: Colors.white,
      color: AppColor.primaryColor,
           child: Text(text),
      ),
    );
  }
}