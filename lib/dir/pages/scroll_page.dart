import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(scrollDirection: Axis.vertical, children: [
        pagina1(),
        pagina2(),
      ]),
    );
  }

  Widget pagina1() {
    Widget colorFondo() {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(108, 192, 218, 1.0),
      );
    }

    Widget imagenFondo() {
      return Container(
        width: double.infinity,
        height: double.infinity,
        child: Image(
          image: AssetImage('assets/images/original.png'),
          fit: BoxFit.cover,
        ),
      );
    }

    Widget textos() {
      final textStyle = TextStyle(
          color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
      return SafeArea(
        child: Column(
          children: [
            Text(
              '11 °',
              style: textStyle,
            ),
            Text(
              'Miercoles',
              style: textStyle,
            ),
            Expanded(child: Container()),
            Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 40.0,
            )
          ],
        ),
      );
    }

    return Stack(
      children: [colorFondo(), imagenFondo(), textos()],
    );
  }

  Widget pagina2() {
    return Container(
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          textColor: Colors.white,
          color: Colors.blue,
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
            child: Text('Bienvenido'),
          ),
        ),
      ),
    );
  }
}
