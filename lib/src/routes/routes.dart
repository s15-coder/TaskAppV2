import 'package:flutter/cupertino.dart';
import 'package:task_app_2/src/pages/detail_task_page.dart';
import 'package:task_app_2/src/pages/home_page.dart';
import 'package:task_app_2/src/pages/login_page.dart';
import 'package:task_app_2/src/pages/new_task_page.dart';
import 'package:task_app_2/src/pages/profile_page.dart';
import 'package:task_app_2/src/pages/register_page.dart';

Map<String, Widget Function(BuildContext)> get routes => {
      HomePage.routeName: (_) => const HomePage(),
      RegisterPage.routeName: (_) => RegisterPage(),
      LoginPage.routeName: (_) => LoginPage(),
      ProfilePage.routeName: (_) => ProfilePage(),
      NewTaskPage.routeName: (_) => const NewTaskPage(),
      DetailTaskPage.routeName: (_) => const DetailTaskPage(),
    };
