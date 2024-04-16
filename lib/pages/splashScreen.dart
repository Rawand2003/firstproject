import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_chefapp/pages/change.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen>
 with SingleTickerProviderStateMixin{

  @override
   void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds:3,),() {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => change(),));
    },);
   }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFA9A0C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Group 3359.png"),
          ],
        ),
      ),
    );
  }
}