import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/user_controller.dart';
import '../widgets/user.dart';



class UserPageView extends StatelessWidget {
  final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),

          Expanded(
            child: Obx(
                  () {
                if (userController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.separated(

                    itemCount: userController.userList.length,
                    itemBuilder: (context, index) {
                      return User(userController.userList[index]);
                    },
                    separatorBuilder: ( context, int index) {
                      return Divider(thickness: 1,color: Colors.black,);
                    },

                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}