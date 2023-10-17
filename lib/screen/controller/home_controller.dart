import 'package:get/get.dart';
import 'package:quiz_app/screen/model/home_model.dart';

class HomeController extends GetxController {
  RxInt questionNo = 0.obs;
  RxInt i = 1.obs;
  RxBool j = false.obs;

  void chanheI() {
    if (i.value < 3) {
      i++;
    } else {
      j.value = true;
    }
  }

  List<HomeModel> questionList = [
    HomeModel(
        que:
            "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
        a: "Asia",
        b: "Africa",
        c: "Europe",
        d: "Australia"),
    HomeModel(
        que:
            "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of",
        a: "Asia",
        b: "Africa",
        c: "Europe",
        d: "Australia"),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    //
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
    // HomeModel(que: "",a: "",b: "",c: "",d: ""),
  ];

  List ansList = ["B"];
  RxList userList = [].obs;
}
