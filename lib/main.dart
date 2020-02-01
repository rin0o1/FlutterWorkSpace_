// Flutter code sample for AboutListTile

// This sample shows two ways to open [AboutDialog]. The first one
// uses an [AboutListTile], and the second uses the [showAboutDialog] function.

import 'package:flutter/material.dart';
import 'MainActivity.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MainActivity(),
    );
  }
}
