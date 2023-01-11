import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Jaison1 extends StatefulWidget {
  const Jaison1({Key? key}) : super(key: key);

  @override
  State<Jaison1> createState() => _Jaison1State();
}

class _Jaison1State extends State<Jaison1> {
  Future<dynamic> getdata() async {
    final url = "https://reqres.in/api/users/2";
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body)["data"]["first_name"];

      // if (response.statusCode == 200) {
      //   var body = jsonDecode(response.body)["data"]["first_name"];
      // }
      return body;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: getdata(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return Text(snapshot.data);
                  } else {
                    return Text("something went wrong");
                  }
                }),
          ],
        ),
      ),
    );
  }
}
