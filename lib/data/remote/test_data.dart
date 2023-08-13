import 'package:flutter_application_2/core/class/crud.dart';
import 'package:flutter_application_2/linkapi.dart';

class TestData
{
  Crud crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.test, {});
return response.fold((l) => l, (r) =>r);

  }
}