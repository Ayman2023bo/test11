import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class Crud {
  getRequest(String url) async {
    try {
     http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
      return  jsonDecode(response.body);
      } else {
        print("error ${response.statusCode}");
      }
    } catch (e) {
      print("error catch $e");
    }
  }
  postRequest(String url,Map data) async {
    try {
      http.Response response = await http.post(Uri.parse(url),body: data);
      if (response.statusCode == 200) {
      return  jsonDecode(response.body);
      } else {
        print("error ${response.statusCode}");
      }
    } catch (e) {
      print("error catch $e");
    }
  }
}
