import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/apptheme.dart';
import '../services/services.dart';

class LocaleController extends GetxController
{
  Locale? language;
  MyServices mySercices = Get.find();

  ThemeData appTheme = themeEnglish;
  //1-تخزين لغة جديدة
  changeLang(String langcode)
  {
Locale locale = Locale(langcode);
mySercices.sharedpreferences.setString("lang", langcode);
appTheme = langcode =="ar" ? themeArabic : themeEnglish;
Get.changeTheme(appTheme);
Get.updateLocale(locale);
  }

//2-اختيار اللغة عند التحميل
  @override
  void onInit()
  {
String? sharedPrefLang= mySercices.sharedpreferences.getString("lang");
if(sharedPrefLang=="ar")
{
language = const Locale("ar");
appTheme = themeArabic;
}
else if(sharedPrefLang=="en")
{
  language = const Locale("en");
  appTheme = themeEnglish;
}
else
{
language =  Locale(Get.deviceLocale!.languageCode);
appTheme = themeEnglish;
}
    super.onInit();
  }

}