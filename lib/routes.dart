
import 'package:flutter_application_2/core/midlleware/mymiddleware.dart';
import 'package:flutter_application_2/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:flutter_application_2/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:flutter_application_2/view/screen/auth/homepage.dart';
import 'package:flutter_application_2/view/screen/auth/signup.dart';
import 'package:flutter_application_2/view/screen/auth/successsignup.dart';
import 'package:flutter_application_2/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:flutter_application_2/view/screen/auth/verifycodesignup.dart';
import 'package:flutter_application_2/view/screen/language.dart';
import 'package:get/get.dart';
import 'core/constant/routes.dart';
import 'view/screen/auth/login.dart';
import 'view/screen/auth/forgetpassword/successresetpassword.dart';
import 'view/screen/onboarding.dart';

List<GetPage<dynamic>>?  routes =[
//GetPage(name : "/" , page :()=>const TestView()),  
GetPage(name : "/" , page :() => const Language() , middlewares:  [MyMiddleWare()]),  
GetPage(name : AppRoute.login , page :()=>const Login()),
GetPage(name : AppRoute.signUp , page :()=>const SignUp()),
GetPage(name : AppRoute.resetPassword , page :()=>const ResetPassword()),
GetPage(name : AppRoute.verifyCode , page :()=>const VerifyCode()),
GetPage(name : AppRoute.forgetPassword , page :()=>const ForgetPassword()),
GetPage(name : AppRoute.successSignUp , page :()=>const SuccessSignUp()),
GetPage(name : AppRoute.successResetPassword , page :()=>const SuccessResetPassword()),
GetPage(name : AppRoute.verifyCodeSignUp , page :()=>const VerifyCodeSignUp()),

///onBoarding
GetPage(name : AppRoute.onBoarding , page :() => const OnBoarding()),
//Home
GetPage(name : AppRoute.homepage , page :() => const HomePage()),

]
;


// Map<String , Widget Function(BuildContext)> routess=
// {
//   ///Auth
// AppRoute.login: (context)=>const Login(),
// AppRoute.signUp: (context)=>const SignUp(),
// AppRoute.resetPassword :  (context)=>const ResetPassword(),
// AppRoute.verifyCode:  (context)=>const VerifyCode(),
// AppRoute.forgetPassword :  (context)=>const ForgetPassword(),
// AppRoute.successSignUp:  (context)=>const SuccessSignUp(),
// AppRoute.successResetPassword :  (context)=>const SuccessResetPassword(),
// AppRoute.verifyCodeSignUp :  (context)=>const VerifyCodeSignUp(),
// ///onBoarding
// AppRoute.onBoarding: (context)=>const OnBoarding(),

// };