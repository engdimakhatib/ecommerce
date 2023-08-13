 import 'package:flutter/material.dart';
import 'color.dart';
 
 ThemeData themeEnglish = ThemeData (
        primaryColor: AppColor.backgroundcolor,
        fontFamily: "PlayFairDisplay",
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 9, 9, 9),),
        useMaterial3: true,
        textTheme:  const TextTheme(
          displaySmall: TextStyle(fontSize: 18 ,color:AppColor.grey),
             displayLarge: TextStyle(fontSize: 22 ,color:AppColor.grey),
           displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:AppColor.black),
           bodySmall:TextStyle(fontSize: 14 ,color: AppColor.grey,height: 2),
            ),
      );

 ThemeData themeArabic = ThemeData (
        primaryColor: AppColor.backgroundcolor,
        fontFamily: "Cairo",
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 9, 9, 9),),
        useMaterial3: true,
        textTheme:  const TextTheme(
        displaySmall: TextStyle(fontSize: 18 ,color:AppColor.grey),
             displayLarge: TextStyle(fontSize: 22 ,color:AppColor.grey),
           displayMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:AppColor.black),
           bodySmall:TextStyle(fontSize: 14 ,color: AppColor.grey,height: 2),
            ),
      );      