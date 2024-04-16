import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class applistTile extends StatelessWidget {
  final String? imagePath;
  final String? title;
  final String? description;
  final String? price;

  applistTile(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.description,
      this.price});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imagePath!),
          ),
        ),
      ),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      subtitle: Column(
        children: [
          Text(
            description!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffC4C4C4)),
          ),
          Text(
            price!,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xffC4C4C4)),
          ),
        ],
      ),
    );
  }
}
