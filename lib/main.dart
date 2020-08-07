import 'package:designs/pages/basico_page.dart';
import 'package:designs/pages/botones_page.dart';
import 'package:designs/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'botones',
      routes: {
        'basico'  : (BuildContext context) => BasicoPage(),
        'scroll'  : (BuildContext context) => Scrollpage(),
        'botones'  : (BuildContext context) => BotonesPage()
      },
    );
  }
}