import 'package:flutter/material.dart';

/// This is the stateless widget that the main application instantiates.
class MainActivity extends StatelessWidget {
  MainActivity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.body1;
    final List<Widget> aboutBoxChildren = <Widget>[
      SizedBox(height: 24),
      RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                style: textStyle,
                text: 'Flutter is Google’s UI toolkit for building beautiful, '
                    'natively compiled applications for mobile, web, and desktop '
                    'from a single codebase. Learn more about Flutter at '),
            TextSpan(
                style: textStyle.copyWith(color: Theme.of(context).accentColor),
                text: 'https://flutter.dev'),
            TextSpan(style: textStyle, text: '.'),
          ],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('SKYSCANNER'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          /*  child: SafeArea(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'Show About Example',
              applicationVersion: 'August 2019',
              applicationLegalese: '© 2019 The Chromium Authors',
              aboutBoxChildren: aboutBoxChildren,
            ),
          ),*/
        ),
      ),
     body: Center(
      child : Column(
          children: <Widget>[
         Row(
           children: <Widget>[

           ],
         ),
            Column(
           children: <Widget>[
             Padding (padding :  EdgeInsets.all(5)),

             TextField(
               textAlign: TextAlign.center,
               decoration: InputDecoration(
                   hintText: 'Da',
                 border: OutlineInputBorder(),
               ),
             ),
             Padding (padding :  EdgeInsets.all(5)),
             TextField(
               textAlign: TextAlign.center,
               decoration: InputDecoration(
                   hintText: 'A',
                  border: OutlineInputBorder(),
               ),
             ),
           ],
         ),
      ]
      ),
     ),
      );

  }
}