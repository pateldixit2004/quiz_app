import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/screen/controller/home_controller.dart';
import 'package:quiz_app/utils/app_mediaQuery.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    AppSize.appSize.initSize(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: h * 0.01,
              ),
              Obx(() => Text("${controller.questionNo}")),
              Container(
                height: h * 0.1,
                width: w,
                alignment: Alignment.center,
                padding: EdgeInsets.all(w * 0.04),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent),
                child: Text(
                  "${controller.questionList[0].que}",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: w * 0.03),
                ),
              ),
              Container(
                height: h * 0.09,
                width: w,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {
                    controller.questionList[controller.i.value++];

                    // var a =
                    //     controller.userList.add(controller.questionList[0].a);

                    if (controller.userList[controller.i.value] ==
                        controller.ansList[controller.i.value]) {
                      Get.toNamed(
                        "/s",
                        arguments: controller.i.value,
                      );
                    }
                  },
                  shape: const StadiumBorder(),
                  splashColor: Colors.deepOrange,
                  hoverColor: Color(0xd771c56a),
                  color: Colors.white,
                  child: Center(
                      child: Text(
                        "${controller.questionList[0].a}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.025,
                            fontWeight: FontWeight.bold),
                      )),
                ),

              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                height: h * 0.09,
                width: w,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  shape: const StadiumBorder(),
                  splashColor: Colors.deepOrange,
                  hoverColor: Color(0xd771c56a),
                  color: Colors.white,
                  child: Center(
                      child: Text(
                        "${controller.questionList[0].b}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.025,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                height: h * 0.09,
                width: w,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  shape: const StadiumBorder(),
                  splashColor: Colors.deepOrange,
                  hoverColor: Color(0xd771c56a),
                  color: Colors.white,
                  child: Center(
                      child: Text(
                        "${controller.questionList[0].c}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.025,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                height: h * 0.09,
                width: w,
                alignment: Alignment.center,
                child: MaterialButton(
                  onPressed: () {},
                  shape: const StadiumBorder(),
                  splashColor: Colors.deepOrange,
                  hoverColor: Color(0xd771c56a),
                  color: Colors.white,
                  child: Center(
                      child: Text(
                        "${controller.questionList[0].d}",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: w * 0.025,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
