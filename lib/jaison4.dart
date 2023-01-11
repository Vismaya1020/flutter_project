import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Jaison44 extends StatefulWidget {
  const Jaison44({Key? key}) : super(key: key);

  @override
  State<Jaison44> createState() => _Jaison44State();
}

class _Jaison44State extends State<Jaison44> {
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
                    return Expanded(
                      child: ListView.builder(
                          itemCount: snapshot.data["data"].length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                color: Colors.red,
                                child: ListTile(
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                snapshot.data["data"][index]
                                                    ["avatar"]))),
                                  ),
                                  title: Text(snapshot.data["data"][index]
                                      ["first_name"]),
                                  subtitle:
                                      Text(snapshot.data["support"]["text"]),
                                ),
                              ),
                            );
                          }),
                    );
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
