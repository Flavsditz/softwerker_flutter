import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'alert_show.dart';

class OSTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'WebSocket Demo';

    // Here we also use the system look and feel for the OS, based on which platform we are
    if (Platform.isAndroid) {
      return MaterialApp(
        title: title,
        home: AlertDialogShowPage(),
      );
    } else if (Platform.isIOS) {
      return CupertinoApp(
        title: title,
        home: AlertDialogShowPage(),
      );
    }

  }
}
