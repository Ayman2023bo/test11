import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextFiled({super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsetsDirectional.symmetric(horizontal: 13,vertical: 10),
        border: OutlineInputBorder(
          
          borderSide: BorderSide(color: Colors.black,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
