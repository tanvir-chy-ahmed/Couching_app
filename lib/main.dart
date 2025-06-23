import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:success_academy_v1/MainScreen.dart';

void main(){
  runApp(MNS());
}



class MNS extends StatelessWidget {
  const MNS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),

    );
  }
}
