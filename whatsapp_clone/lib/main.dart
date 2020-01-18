import 'package:flutter/material.dart';
import 'package:whatsapp_clone/whatsapp_home.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Whatsapp",
      theme: new ThemeData(
        primaryColor: new Color(0xFF075E54),
        accentColor: new Color(0xFF25D366)
      ),
      home: new WhatsappHome(),
    );
  }
}
