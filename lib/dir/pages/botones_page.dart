import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          fondoApp(),
          Padding(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [titulos(), botonesRedondeados()],
                ),
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
          fixedColor: Colors.pinkAccent,
          unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today,
                  size: 30.0,
                ),
                title: Container()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bubble_chart,
                  size: 30.0,
                ),
                title: Container()),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.supervised_user_circle,
                  size: 30.0,
                ),
                title: Container()),
          ]),
    );
  }

  Widget fondoApp() {
    Widget cajaRosa() {
      return Positioned(
        top: -100.0,
        child: Transform.rotate(
          angle: pi / 5,
          child: Container(
            width: 310.0,
            height: 310.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0)
                ])),
          ),
        ),
      );
    }

    Widget colorFondo() {
      return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.6),
                end: FractionalOffset(0.0, 1.0),
                colors: [
              Color.fromRGBO(54, 54, 101, 1.0),
              Color.fromRGBO(33, 37, 57, 1.0)
            ])),
      );
    }

    return Stack(
      children: [colorFondo(), cajaRosa()],
    );
  }

  Widget titulos() {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Clasify Transaction',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Nostrud ullamco consectetur id cupidatat amet elit eu minim sint nulla ad pariatur.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          crearBotonRedondeado(Colors.blue, Icons.ac_unit, 'Temperatura'),
          crearBotonRedondeado(Colors.yellow[900], Icons.file_upload, 'File'),
        ]),
        TableRow(children: [
          crearBotonRedondeado(
              Colors.green, Icons.local_grocery_store, 'Store'),
          crearBotonRedondeado(Colors.pink, Icons.directions_bus, 'Bus'),
        ]),
        TableRow(children: [
          crearBotonRedondeado(Colors.blue, Icons.ac_unit, 'Temperatura'),
          crearBotonRedondeado(Colors.yellow[900], Icons.file_upload, 'File'),
        ]),
        TableRow(children: [
          crearBotonRedondeado(
              Colors.green, Icons.local_grocery_store, 'Store'),
          crearBotonRedondeado(Colors.pink, Icons.directions_bus, 'Bus'),
        ]),
        TableRow(children: [
          crearBotonRedondeado(Colors.blue, Icons.ac_unit, 'Temperatura'),
          crearBotonRedondeado(Colors.yellow[900], Icons.file_upload, 'File'),
        ]),
        TableRow(children: [
          crearBotonRedondeado(
              Colors.green, Icons.local_grocery_store, 'Store'),
          crearBotonRedondeado(Colors.pink, Icons.directions_bus, 'Bus'),
        ]),
      ],
    );
  }

  Widget crearBotonRedondeado(Color color, IconData icon, String texto) {
    return Container(
      margin: EdgeInsets.only(right: 10.0, bottom: 20.0, top: 20.0),
      height: 180.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color.fromRGBO(62, 66, 107, 0.7)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 35.0,
                  backgroundColor: color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Text(
                  texto,
                  style: TextStyle(color: color),
                )
              ]),
        ),
      ),
    );
  }
}
