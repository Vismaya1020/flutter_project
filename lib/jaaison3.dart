    import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Jaison33 extends StatefulWidget {
  const Jaison33({Key? key}) : super(key: key);

  @override
  State<Jaison33> createState() => _Jaison33State();
}

class _Jaison33State extends State<Jaison33> {
 Future<dynamic> getdata()async
  {
    final url="https://reqres.in/api/users/2";
    var response=await get(Uri.parse(url));
    if(response.statusCode==200)
      {
        var body=jsonDecode(response.body);

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
                builder: (context,snapshot) {

                 if(
                 snapshot.connectionState== ConnectionState.waiting)
                   {
                     return CircularProgressIndicator();
                   }
                 if(snapshot.hasData)
                   {
                     return Column(
                       children: [
                         Text(snapshot.data["data"]["first_name"]),
                         Text(snapshot.data["data"]["last_name"]),
                       Container(
                         width: 200,
                         height: 200,
                         child: Image.network(snapshot.data["data"]["avatar"]),
                       )

                       ],
                     );
                   }
                 else
                 {
                   return Text("something went wrong");
                 }
                }
              )
            ],
          ),
       ),
    );
  }
}
