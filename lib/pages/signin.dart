import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_chefapp/class/TextField.dart';
import 'package:flutter_application_chefapp/class/button.dart';
import 'package:flutter_application_chefapp/config.dart';
import 'package:flutter_application_chefapp/model/signmodel.dart';
import 'package:flutter_application_chefapp/pages/change.dart';
import 'package:flutter_application_chefapp/pages/menu.dart';
import 'package:flutter_application_chefapp/service/signin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signinpage extends StatelessWidget {
  signinpage({super.key});
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  ValueNotifier notifier = ValueNotifier('');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/background_image 1.png"),
            // Image.asset("assets/images/Welcome Back.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Welcome Back".tr(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 30),
                child: AppTextfield(
                  thelabel: "E-mail".tr(),
                  controller: email,
                ),
              ),
              AppTextfield(
                thelabel: "Password".tr(),
                controller: password,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => change(),
                        ));
                      },
                      child: Text("Forgot your password?".tr(),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9D9FA0),
                          )),
                    ),
                  ],
                ),
              ),
              ValueListenableBuilder(
                valueListenable: notifier,
                builder: (context, value, child) {
                  return Text(value);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 80),
                child: AppButton(
                    onTap: () async {
                      String token = await signin(signmodel(
                          email: email.text,
                          password: password.text));
                      notifier.value = token;
                      config.get<SharedPreferences>().setString('token', token);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => menuPage(),));
                    },
                    text: "Sign in".tr()),
              ),
              Text(
                "Don’t have an account? Sign Up".tr(),
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xff9D9FA0)),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
// flutter.test99test@gmail.com
// fluttertest99test@