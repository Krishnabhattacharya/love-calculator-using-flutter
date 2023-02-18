import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_calculator/splashscreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  //var r=new Random();
  TextEditingController t1=new TextEditingController();
  TextEditingController t2=new TextEditingController();
  var par=0;
  int s1=0;
  String f='',s='';
  String sum="";
  // int sumcal(String s1)
  // {
  //   int sum=0;
  //   for(int i=0;i<s1.length;i++)
  //   {
  //     sum=sum+s1.codeUnitAt(i);
  //   }
  //   return sum;
  // }
   void cal()
  {
    setState(() {
      if(t1.text.isNotEmpty&&t2.text.isNotEmpty)
      {
      //  par=r.nextInt(100) ;
 f=t1.text.toString();
 s=t2.text.toString();
  sum=f+s;
  sum=sum.toLowerCase();
  s1=sum.hashCode;
  Random r=new Random(s1);
  par=r.nextInt(100);
  //       // int sum1=sumcal(f);
  //       // int sum2=sumcal(s);
  //       // int total=sum1+sum2;
  //       // total=total%10;
  //       // total=total*10;
  //       // par=total.toString() + '%';
  //
      }
     });
   }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
        title: Text(widget.title,style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Stack(
        children: [
       Image.asset('assets/immage/loveimage.png',height: double.infinity,fit: BoxFit.cover,width: double.infinity,),
          Column(
            children: [
              Container(height: 20,),
          Container(
          padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 32), decoration: BoxDecoration(
            color: Colors.black,
          borderRadius: BorderRadius.circular(40),
      ),
           child: Text('Parcentage :- $par%',style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic),),
    ),
              Container(height: 20,),
              Container(
              margin: EdgeInsets.only(left: 25,right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                border: Border.all(width: 2),
              ),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(

                  contentPadding: EdgeInsets.only(left: 10),
                  hintStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 19,color: Colors.white),
                  hintText: 'HIS NAME',
                  border: InputBorder.none,
                ),
              ),
              ),
           Container(height: 25,),
              Container(
                margin: EdgeInsets.only(left: 25,right: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(36),
                  border: Border.all(width: 2),
                ),
                child: TextField(
                  controller: t2,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintStyle: TextStyle(fontStyle: FontStyle.italic,fontSize: 19,color: Colors.white),
                    hintText: 'HER NAME',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  ElevatedButton(onPressed: (){cal();}, child: Text('START',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.black),),
                  ElevatedButton(onPressed: (){

                    setState(() {
                      par=0;
                      t1.clear();
                      t2.clear();
                    });
                  }, child: Text('CLEAR',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.black),)
                ],
              )
            ],
          )
        ],
      ),
    );
  }


}
