import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text('HOME'),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Container(
            width: Get.width,
            height: Get.height *0.3,
            color: Colors.amber,
          ),
          Container(
            width: Get.width,
            height: Get.height * 0.3 ,
            color: Colors.red,
            child: LayoutBuilder(builder: (context, constraints) {
              double lebarMerah = constraints.maxWidth;
              double tinggiMerah = constraints.maxHeight;
              return Stack(
                children: [
                  Container(
                    width: lebarMerah* 0.7 ,
                    height: tinggiMerah ,
                    color: Colors.indigo,
                  ),
                  Container(
                    width: lebarMerah* 0.3,
                    height: tinggiMerah,
                    color: Colors.green,
                  ),
                ],
              );
            }
            ),
          ),
        ],
      )
    );
  }
}
