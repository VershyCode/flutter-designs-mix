import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 16.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('http://3.bp.blogspot.com/-eqQBjnvk_Ag/T3Ck94n4X7I/AAAAAAAAIVw/iWs_k7-eDnk/s1600/9975087.jpg'),
          ),
          Container(
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
          )
        ],
      )
    );
  }
}