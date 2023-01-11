import 'package:flutter/material.dart';

class Ccontainer extends StatefulWidget {
  const Ccontainer({Key? key}) : super(key: key);

  @override
  State<Ccontainer> createState() => _CcontainerState();
}

class _CcontainerState extends State<Ccontainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(children: <Widget>[
          Container(child: Image.asset('assets/discover.png')),
          Row(
            children: <Widget>[
              Expanded(child: Text(''), flex: 9),
              Expanded(
                child: ClipRRect(
                    borderRadius: new BorderRadius.circular(80.0),
                    child: Image.asset('https://www.pexels.com/photo/person-holding-a-green-plant-1072824/')),
                flex: 6,
              ),
              Expanded(child: Text(''), flex: 9)
            ],
          ),
    ]),
      )


    );
  }
}
