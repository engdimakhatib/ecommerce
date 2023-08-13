import '../../../../core/class/crud.dart';
import '../../../../linkapi.dart';

class LoginData
{
  Crud crud;
  LoginData(this.crud);
  postData(String password , String email) async {
var response = await crud.postData(AppLink.login ,{
"email":email,
"password":password,

} );
//return response;
response.fold((l) => l, (r) => r);
  }
}