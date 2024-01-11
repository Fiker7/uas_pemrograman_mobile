import 'package:flutter/material.dart';

class profDev extends StatefulWidget {
  const profDev({super.key});

  @override
  State<profDev> createState() => _profDevState();
}

class _profDevState extends State<profDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 180, 147),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 80)),
          Text(
            " HALAMAN DEVELOPER",
            style: TextStyle(
              color: const Color.fromARGB(255, 26, 67, 78),
              fontFamily: 'Arial',
              fontSize: 25,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.0,
            ),
          ),
          Center(
            child: Card(
              elevation: 100,
              shadowColor: Colors.black,
              color: Color.fromARGB(255, 217, 180, 147),
              child: SizedBox(
                width: 500,
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 200),
                        child: Image.asset(
                          'assets/dev.jpg',
                          width: 150,
                          height: 150,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ), //SizedBox

                      SizedBox(
                        height: 20,
                      ), //SizedBox
                      Text(
                        'Halo, saya Fiqri. Selamat datang di aplikasi ',
                        style: TextStyle(
                          fontSize: 15,
                          color: const Color.fromARGB(255, 26, 67, 78),
                        ), //Textstyle
                      ),
                      Padding(padding: EdgeInsets.only(top: 40)),
                    ],
                  ), //Column
                ), //Padding
              ), //SizedBox
            ),
          ),
        ],
      ),
    );
  }
}
