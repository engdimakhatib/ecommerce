import 'package:get/get.dart';

validInput(String val , int min ,int  max ,String type )
{
  if(type == "username")
  {
    if(!GetUtils.isUsername(val))
    {
      return "45".tr;
      //return "not valid username";
    }
  }
    if(type == "email")
  {
    if(!GetUtils.isEmail(val))
    {
      return "46".tr;
      //return "not valid email";
    }
  }
   if(type == "phone")
  {
    if(!GetUtils.isPhoneNumber(val))
    {
      return "47".tr;
      //return "not valid PhoneNumber";
    }
  }

  if(val.length < min)
   {
    
      return "${"48".tr}$min" ;
   // return "value can't be less than $min";
  }
  if(val.length > max)
   {
    
      return "${"49".tr}$max";
   // return "value can't be more than $max";
  }
 if(val.isEmpty)
   {
    
      return "50".tr ;
   // return "value can't be Empty";
  }

}