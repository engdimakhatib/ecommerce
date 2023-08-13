import 'package:flutter/material.dart';


class CustomTextFormAuth extends StatelessWidget {
final String hinText;
final String  labelText;
final IconData iconData;
final TextEditingController? myController ;
final String? Function(String?)  valid;
final bool isNumber;
final bool? obsecuretext;
final void Function()? onTapIcon ;

  const CustomTextFormAuth({super.key,
  required this.hinText,
 required this.labelText,
  required this.iconData,
 required this.myController, 
 required this.valid,
  required this.isNumber, 
   this.obsecuretext = false,
    this.onTapIcon,
 });


  @override
  Widget build(BuildContext context) {
    return     Container(
      margin : const EdgeInsets.only(bottom:20),
      child: TextFormField(
        keyboardType: isNumber ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
        validator: valid,
      controller : myController,
      obscureText: obsecuretext == null ||  obsecuretext == false ? false : true,
    decoration : InputDecoration(
      hintText: hinText,
      hintStyle: const TextStyle(fontSize: 14),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      label: Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Text(labelText)),
      contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 30,),
      suffixIcon: InkWell(onTap: onTapIcon , child: Icon(iconData),) ,
    ),
             ),
    );
  }
}