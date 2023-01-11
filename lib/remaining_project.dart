import 'package:flutter/material.dart';
import 'package:flutter_project/classnamee.dart';

import 'ffirst_project.dart';

class Remmaing extends StatefulWidget {
  const Remmaing({Key? key}) : super(key: key);

  @override
  State<Remmaing> createState() => _RemmaingState();
}

class _RemmaingState extends State<Remmaing> {
  TextEditingController txtt1 = TextEditingController();
  TextEditingController txtt2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" ADD NOTES ")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Title",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 23, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 39, right: 39),
            child: TextField(
              controller: txtt1,
              decoration: InputDecoration(
                  hintText: "Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "CONTENT",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 19, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 39, right: 39),
            child: TextField(
              controller: txtt2,
              decoration: InputDecoration(
                hintText: "Content",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: ElevatedButton(
                onPressed: () {
                  Classi.notes
                      .add({"title": txtt1.text, "content": txtt2.text});
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Proju()));
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context){return Proju();}));
                },
                child: Text("SAVE")),
          ),
        ],
      ),
    );
  }
}
