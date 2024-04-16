// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTextfield extends StatelessWidget {
 final TextEditingController? controller;
  final String? thelabel;

  AppTextfield({
    Key? key,
    required this.thelabel,
   required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // validator: (value) {
      //   if (value!.isEmpty)
      //     (
      //       ScaffoldMessenger.of(context).showSnackBar(

      //       SnackBar(
      //         content: Text("empty"),
      //       ),
      //     ));
      //   if (value.length < 20)
      //     (
      //       ScaffoldMessenger.of(context).showSnackBar(
      //       SnackBar(
      //         content: Text("error"),
      //       ),
      //     ),);
      // },
      decoration: InputDecoration(
        
        labelText: thelabel,
        labelStyle: TextStyle(
          color: Color(0xff9D9FA0),
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Color(0xff9D9FA0),
          ),
        ),
      ),
    );
  }
}
