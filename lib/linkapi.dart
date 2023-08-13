class AppLink
{
  static const String server = "https://ecommercewael.000webhostapp.com" ;
  static const String test = "$server/test.php" ;
  

  //=========================Auth======================//
    
  static const String signup = "$server/auth/signup.php" ;
  static const String verifyCodeSignup = "$server/auth/verifycode.php" ;
  static const String login = "$server/auth/login.php" ;


  //========================ForgetPaddword======================//
  static const String checkEmail = "$server/auth/forgetpassword/checkemail.php" ;
  static const String resetPassword = "$server/auth/forgetpassword/resetpassword.php" ;
  static const String verifycodeforgetpassword = "$server/auth/forgetpassword/verifycode.php" ;

}