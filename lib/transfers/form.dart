import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _titleApp = "Criando transferência";
const _titleOk = "Confirmar";



class FormTransfer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormTransferState();
  }
}

class FormTransferState extends State<FormTransfer> {
  final TextEditingController _controllerCountNumber = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titleApp) ,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(controller: _controllerCountNumber, roter: "Número da Conta", way: "0000"),
            Editor(controller: _controllerValue, roter: "Valor", way: "0.00", icon: Icons.monetization_on),
            RaisedButton(
              child: Text(_titleOk),
              onPressed: () =>  _createTransfer(context),
            )
          ],
        ),
      ),
    );
  }

  void _createTransfer(BuildContext context) {
    debugPrint(_controllerCountNumber.text);
    final int countNumber = int.tryParse(_controllerCountNumber.text);
    final double value = double.tryParse(_controllerValue.text);
    if(countNumber != null && value != null){
      final createdTransfer = Transfer(value, countNumber);
      debugPrint('$createdTransfer');
      Navigator.pop(context, createdTransfer);
    }
  }
}
