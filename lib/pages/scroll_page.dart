import 'package:flutter/material.dart';

class Scrollpage extends StatelessWidget {
  const Scrollpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
      children: <Widget>[
          _pagina1(),
          _pagina2(),
        ],
      )
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _botonPag2(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          Text('11°', style: estiloTexto),
          Text('Miercoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),
        ],
      ),
    );
  }

  Widget _botonPag2() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: FlatButton(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bienvenido', 
              style: TextStyle(fontSize: 40.0, color: Colors.white)
            ),
          ),
          color: Colors.blue,
          onPressed: (){},
        ),
      ),
    );
  }
}