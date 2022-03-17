import 'package:get/get.dart';
import 'package:getx_dio_api/model.dart';
import 'package:getx_dio_api/services/dio.dart';

class ReqresController extends GetxController{

  ReqresModel? reqresModel;

void showData()async{
  reqresModel = await ReqresServices().fetchData();
  update();
}
@override
  void onInit() {
    showData();
    super.onInit();
  }
}