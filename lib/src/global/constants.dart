import 'package:flutter/material.dart';
import 'package:task_app/src/models/task_type.dart';

enum Enviroment { development, production }

const Enviroment enviroment = Enviroment.production;
String get host => enviroment == Enviroment.development
    ? "http://192.168.20.25:3000"
    : "https://tasks-app-server.onrender.com";

const defaultTasksTypes = [
  TaskType(
    nameState: "To Do",
    colorState: Colors.red,
  ),
  TaskType(
    nameState: "Doing",
    colorState: Colors.blue,
  ),
  TaskType(
    nameState: "Done",
    colorState: Colors.green,
  ),
];
