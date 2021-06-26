import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.9),
      body: Stack(
        children: [
          Container(
            color: Colors.transparent,
            height: double.infinity,
          ),
          Container(
            color: Colors.greenAccent,
            height: 350,
          ),
          Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 485,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          height: 430,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 22,
                    right: 20,
                    left: 20,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green.shade300,
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      width: 300,
                      height: 50,
                      child: Text("Verify"),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
