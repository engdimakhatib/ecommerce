import 'package:flutter_application_2/core/class/statusrequest.dart';

handlingData(response)
{
if(response is StatusRequest)
{
return response;
}
//Map
else
{
return StatusRequest.success;
}
}