import 'package:flutter/material.dart';

class ButtonExo2 extends StatefulWidget {
  const ButtonExo2({super.key});

  @override
  State<ButtonExo2> createState() => _ButtonExo2State();
}

class _ButtonExo2State extends State<ButtonExo2> {
  bool isRed = true;
  bool isBad = true;

  void initSate() {
    super.initState();
  }

  void changeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
            onTap: () {
              changeColor();
              print("le container is red ? $isRed");
            },
            child: Container(
              width: 200,
              height: 400,
              color: isRed
                  ? Color.fromARGB(255, 185, 72, 63)
                  : Color.fromARGB(255, 108, 213, 111),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    isRed ? Icons.cancel_outlined : Icons.check_circle_outlined,
                    size: 60,
                    color: isRed ? Colors.red : Colors.green,
                  ),
                  Text(isRed ? 'Refuser' : 'Accepter'),
                ],
              ),
            )));
  }
}
