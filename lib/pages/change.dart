import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_chefapp/pages/signin.dart';

class change extends StatelessWidget {
  const change({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset("assets/images/bg 1.png")),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Image.asset("assets/images/image 47.png"),
              ),
              const Text(
                "Welcome to Chef App",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Color(0xff1E1E1E)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 100),
                child: Text(
                  "Please choose your language ".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Color(0xff1E1E1E)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {
                        context.setLocale(const Locale('en'));
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => signinpage(),
                        ));
                      },
                      child: Image.asset("assets/images/Frame 14006.png")),
                  InkWell(
                      onTap: () {
                        context.setLocale(const Locale('ar'));
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => signinpage(),
                        ));
                      },
                      child: Image.asset("assets/images/Frame 14005.png")),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
