import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dio_api/controller/reqrescontroller.dart';

class ReqresUser extends StatelessWidget {
  const ReqresUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GetBuilder<ReqresController>(
              init: ReqresController(),
              builder: (controller) {
                return controller.reqresModel == null
                    ? CircularProgressIndicator()
                    : ListView.builder(
                        itemCount: controller.reqresModel!.data!.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Image.network(
                                  controller.reqresModel!.data![index].avatar!),
                            ),
                            title: Text(controller
                                .reqresModel!.data![index].firstName!),
                          );
                        });
              })),
    );
  }
}
