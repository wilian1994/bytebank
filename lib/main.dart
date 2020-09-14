
import 'package:bytebank/transfers/list.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());


class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent[900],
        accentColor: Colors.blueAccent[900],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[900],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: TransferList()
    );
  }
}






