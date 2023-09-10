import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:frontend/Constants/api.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse(api));
      var data = response.body;
      data = json.decode(data); // Corrected from json.decoder to json.decode
      print(data);
      // Handle the response data here
    } catch (e) {
      // Handle any errors that might occur during the HTTP request.
      print('Error: $e');
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
