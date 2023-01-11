import 'package:flutter/material.dart';

class Piicture extends StatefulWidget {
  const Piicture({Key? key}) : super(key: key);

  @override
  State<Piicture> createState() => _PiictureState();
}

class _PiictureState extends State<Piicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 200,
                color: Colors.red,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.white,
                  child: Image.network("https://cdn.leverageedu.com/blog/wp-content/uploads/2020/08/05195501/Class-11-plant-growth-and-development.png  "),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
