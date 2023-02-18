import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';
class screen extends StatefulWidget
{
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'LOVE',)));
    });
  }
  @override
  Widget build(BuildContext context) {
return Scaffold(
  body: Stack(children:[ Image.asset('assets/immage/loveimage2.png',fit: BoxFit.cover,height: double.infinity,),

  Center(child: Container(height: 600,)),
    Center(child: Text('CALCULATOR',style: TextStyle(fontSize: 34,color: Colors.red),)),
  ],),

);
  }
}