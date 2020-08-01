import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _crearImagen(),
          _crearDescripcion(),
          _crearAcciones(),
          _crearTexto(),
        ],
      )
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('http://3.bp.blogspot.com/-eqQBjnvk_Ag/T3Ck94n4X7I/AAAAAAAAIVw/iWs_k7-eDnk/s1600/9975087.jpg'),
    );
  }

 Widget _crearDescripcion() {
   return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Mi paisaje', style: estiloTitulo),
              SizedBox(height: 7.0),
              Text('Un paisaje en Mexico', style: estiloSubtitulo,)
            ],
          ),
        ),
        Icon(Icons.star, color: Colors.red, size: 30.0),
        Text('41', style: TextStyle(fontSize: 20.0)),
      ],
    ),
  );
 }

 Widget _crearAcciones() {
   return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: <Widget>[
       _accion(Icons.call, 'CALL'),
       _accion(Icons.near_me, 'ROUTE'),
       _accion(Icons.share, 'Share')
     ],
   );
 }

 Widget _accion(IconData icon, String texto) {
  return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
 }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Adipisicing adipisicing laborum incididunt tempor amet qui ullamco laborum sunt anim ullamco do. Labore cupidatat irure eiusmod occaecat dolore laboris incididunt ea ex. Duis ex culpa laboris voluptate aliqua nulla enim dolore non occaecat minim exercitation esse. Nisi ad ex exercitation non consequat elit voluptate ex fugiat aliquip.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}