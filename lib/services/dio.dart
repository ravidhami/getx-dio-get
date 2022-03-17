import 'package:dio/dio.dart';
import '../model.dart';


class ReqresServices {
  Future<ReqresModel> fetchData() async {
    var url ="https://reqres.in/api/users?page=2";
    try {
      Response response = await Dio().get(url);
      ReqresModel user = ReqresModel.fromJson(response.data);
      return user;
    } catch (e) {
      throw e.toString();
    }
  }
}
