import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quiz_app/utils/app_routes.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: appRoutes,
    )
  );
}