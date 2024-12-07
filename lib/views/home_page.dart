
import 'package:api_test/controller/homecontrooller.dart';
import 'package:api_test/models/model.dart';
import 'package:api_test/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
 HomePage({super.key});
 HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child:
            Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                controller.isLoading.value ? CircularProgressIndicator()
                    :
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: ListView.builder(
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      Mobile v = controller.data[index];
                      return ListTile(
                        title: Text(v.name ?? ''),
                        subtitle: Text(v.data!.capacity ?? ''),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(onPressed:() async {
                    // var data = await controller.getRes();
                      Get;
                  }, child: Text("click")),
                )
              ],
            ),),
      ),
    );
  }
}
