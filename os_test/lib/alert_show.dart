import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Testing"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_alert),
          onPressed: () {
            //Here is where the decision happens based on the OS we are in (that it was compiled to, to be more precise)
            if (Platform.isAndroid) {
              _showMaterial(context);
            } else if (Platform.isIOS) {
              _showCupertino(context);
            }
          }),
    );
  }

  Future<void> _showMaterial(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('The Softwerker'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a pretty cool magazine!'),
                Text('And Flutter is pretty awesome'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Agree'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showCupertino(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text('The Softwerker'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a pretty cool magazine!'),
                Text('And Flutter is pretty awesome'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Agree'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
