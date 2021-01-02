import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  // const BasicoPage({Key key}) : super(key: key);
  final tituloStyle =
      new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subtituloStyle = new TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              crearImagen('https://picsum.photos/480'),
              SafeArea(
                child: Column(
                  children: [
                    crearDescripcion(),
                    crearAcciones(),
                    crearTexto(),
                    crearTexto(),
                    crearTexto(),
                    crearTexto(),
                    crearTexto(),
                    crearTexto(),
                    crearTexto(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget crearImagen(url) {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(url),
        height: 250.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget crearDescripcion() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Titulo',
                  style: tituloStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Subtitulo',
                  style: subtituloStyle,
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
            size: 30.0,
          ),
          Text(
            '41',
            style: subtituloStyle,
          )
        ],
      ),
    );
  }

  Widget crearAcciones() {
    Widget _accion(IconData icon, String texto) {
      return Column(
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 30.0,
          ),
          Text(
            texto,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 15.0),
          )
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'call'),
        _accion(Icons.near_me, 'route'),
        _accion(Icons.share, 'share')
      ],
    );
  }

  Widget crearTexto() {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Text(
        'Laboris ad duis ut mollit ea pariatur anim aute fugiat. Mollit nostrud irure do velit aliquip. Amet dolor amet pariatur officia ea amet tempor esse esse ullamco ad mollit voluptate ullamco. Consequat enim tempor aute sint dolore ipsum est veniam. Exercitation fugiat elit reprehenderit officia veniam. Mollit ex dolore adipisicing labore tempor incididunt cillum dolor proident. Eiusmod qui anim aute amet duis consequat culpa magna voluptate do.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}
