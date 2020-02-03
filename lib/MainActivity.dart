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
      /*drawer: Drawer(
        child: SingleChildScrollView(
            child: SafeArea(
            child: AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationName: 'Show About Example',
              applicationVersion: 'August 2019',
              applicationLegalese: '© 2019 The Chromium Authors',
              aboutBoxChildren: aboutBoxChildren,
            ),
          ),
        ),
      ),*/
      body: Center(
        child: Column(children: <Widget>[
          new RadioWidget(),
          /*Row(
            children: <Widget>[
            ],
            children: <Widget>[
              new Flexible(
                child: ListTile(
                  title: const Text('Andata e ritorno'),
                  leading: Radio(
                    value: 1,
                    groupValue: 1,
                  ),
                  onTap: () {},
                ),
              ),
              new Flexible(
                child: ListTile(
                  title: const Text('Sola andata'),
                  enabled: true,
                  leading: Radio(
                    value: 0,
                    groupValue: 1,
                    onChanged: null,
                  ),
                ),
              ),
            ],
          ),*/
          Row(
            children: <Widget>[
              new Flexible(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Da',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              new Flexible(
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'A',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () {},
                child: Text('Prova!'),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  int solaAndata = 0;
  int andataRitorno = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Flexible(
          child: ListTile(
            title: const Text('Andata e ritorno'),
            enabled: true,
            leading: Radio(
              activeColor: Colors.blue,
              value: andataRitorno,
              groupValue: 1,
              onChanged: null,
            ),
            onTap: () => cambiaStato(),
          ),
        ),
        new Flexible(
          child: ListTile(
            onTap: () => cambiaStato(),
            title: const Text('Sola andata'),
            enabled: true,
            leading: Radio(
              activeColor: Colors.blue,
              value: solaAndata,
              groupValue: 1,
              onChanged: null,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void cambiaStato() {
    if (solaAndata == 0) {
      solaAndata = 1;
      andataRitorno = 0;
    } else {
      solaAndata = 0;
      andataRitorno = 1;
    }
  }
}
