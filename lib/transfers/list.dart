import 'package:bytebank/models/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'form.dart';

class TransferList extends StatefulWidget {

  final List<Transfer> _transfers = List();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TransferListState();
  }
}


class TransferListState extends State<TransferList>{
  @override
  Widget build(BuildContext context) {
    debugPrint('widget._transfers.length');
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: ListView.builder(
        itemCount: widget._transfers.length,
        itemBuilder: (context, index) {
          final otherTransfer = widget._transfers[index];
          return CreateCardTransfer(otherTransfer);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FormTransfer();
          })).then((receiptTransfer) => {
            debugPrint('$receiptTransfer'),
            _update(receiptTransfer),
          });
        },
      ),
    );
  }

  void _update(Transfer receiptTransfer) {
    if (receiptTransfer != null) {
      setState(() {
        widget._transfers.add(receiptTransfer);
      });
    }
  }
}

class CreateCardTransfer extends StatelessWidget {
  final Transfer _transfer;

  CreateCardTransfer(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transfer.value.toString()),
        subtitle: Text(_transfer.value.toString()),
      ),
    );
  }
}