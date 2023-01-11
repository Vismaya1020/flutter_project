import 'package:flutter/material.dart';
import 'package:flutter_project/remaining_project.dart';

import 'classnamee.dart';

class Proju extends StatefulWidget {
  const Proju({Key? key}) : super(key: key);

  @override
  State<Proju> createState() => _ProjuState();
}

class _ProjuState extends State<Proju> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Remmaing();
        }));
      },child: Text("+"),),
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: Classi.notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 200,
                      color: Colors.red,
                      child: Column(
                        children: [
                          Text(Classi.notes[index]["title"]),
                          Text(Classi.notes[index]["content"]),
                        ],
                      ),
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}
