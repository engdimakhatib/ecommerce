import '../../../../../core/class/crud.dart';
import '../../../../../linkapi.dart';

class VerifyCodeSignUpData
{
  Crud crud;
  VerifyCodeSignUpData(this.crud);
  postData( String email , String verifycode) async {
var response = await crud.postData(AppLink.verifyCodeSignup,{"email":email,} );
return response;

  }
}