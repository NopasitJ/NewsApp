import 'package:flutter/material.dart';
import 'package:softarchpro/othersprofilepage.dart';
import 'package:softarchpro/userprofilepage.dart';
import 'package:softarchpro/editprofilepage.dart';
import 'package:softarchpro/othersprofilepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfilePage());
  }
}
