  import 'package:flutter/material.dart';
import 'package:flutter_project/classproject2.dart';

import 'classnamee.dart';
import 'firstpage1.dart';

class SecondpaGe extends StatefulWidget {
  const SecondpaGe({Key? key}) : super(key: key);

  @override
  State<SecondpaGe> createState() => _SecondpaGeState();
}

class _SecondpaGeState extends State<SecondpaGe> {
  TextEditingController txt = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Classic.note1.add({"title": txt.text});
      //     Navigator.of(context).push(MaterialPageRoute(builder: (context){
      //       return Firstpage1();
      //     }));
      //   },
      //   child: Text("Submit"),
      // ),
      // appBar: AppBar(
      //   title: Text("ADD NOTES"),
      // ),
      // body: Column(
      //   children: [
      //
      //     ListView.builder(
      //
      //       itemBuilder: (context,index)
      //
      //       {
      //         return Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.red,
      //         );
      //       }
      //     )
      //   ],
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Firstpage1();
        }));
      },child: Text("+"),),
      appBar: AppBar(
        title: Text("Notes"),
      ),
      body: Column(
          children: [
      Expanded(
      child: ListView.builder(

       itemCount: Classic.note1.length,
          itemBuilder: (context, index) {
            return ListView.builder(
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 200,
                    width: 100,
                    color: Colors.red,
                    child: Column(
                      children: [
// Classic.note1.add("Submit": txt.text,);
                        Text(Classic.note1[index]),
                      ],
                    ),
                  ),
                );
              }
            );
          }),
    ),


  ]
      ),);
  }
}
