import 'package:flutter/material.dart';
import 'package:flutter_project/classproject2.dart';
import 'package:flutter_project/secondpage2.dart';

class Firstpage1 extends StatefulWidget {
  const Firstpage1({Key? key}) : super(key: key);

  @override
  State<Firstpage1> createState() => _Firstpage1State();
}

class _Firstpage1State extends State<Firstpage1> {
  TextEditingController txt = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: txt,
                decoration: InputDecoration(
                  hintText: "Submit",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SecondpaGe();
                  }));
                  Classic.note1.add(txt.text);
                },
                child: Text("+")),
          ],
        ),
      ),
    );
  }
}
