import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {

  final TextEditingController controller;
  final String roter;
  final String way;
  final IconData icon;


  Editor({this.controller, this.roter, this.way, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(
          fontSize: 24.0,
        ),
        decoration: InputDecoration(
          icon: Icon(icon),
          labelText: roter,
          hintText: way,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
