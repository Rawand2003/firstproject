import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_chefapp/class/applistTile.dart';
import 'package:flutter_application_chefapp/class/button.dart';
import 'package:flutter_application_chefapp/model/menumodel.dart';
import 'package:flutter_application_chefapp/service/menu.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: AppButton(onTap: () {}, text: "Add Meal"),
            ),
            FutureBuilder<List<menumodel>>(
              future: getMeal(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                      height: 600,
                      child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) {
                            return 
                              ListTile(
                              leading: Image.network(snapshot.data?[index].images.first ?? ""),
                              title: Text(snapshot.data![index].name),
                              subtitle: Text(snapshot.data![index].description),
                              trailing: Text(snapshot.data![index].price.toString()),
                            );
                          }));
                         
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 30,
          selectedItemColor: Color(0xffED9728),
          // backgroundColor: Colors.white,
          // indicatorColor:
          // Color(0xffED9728),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_sharp,
                color: Color(0xff979797),
              ),
              label: 'profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Color(0xff979797),
              ),
              label: 'menu',
            ),
          ],
        ));
  }
}
