  import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Jaaaisson extends StatefulWidget {
  const Jaaaisson({Key? key}) : super(key: key);

  @override
  State<Jaaaisson> createState() => _JaaaissonState();
}

class _JaaaissonState extends State<Jaaaisson> {
  Future<dynamic> getdata() async {
    final url = "https://reqres.in/api/users?page=2";
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {}
    var body = jsonDecode(response.body);
    return body;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 300,
            )

          ],
        ),
      ),

    );
  }
}
