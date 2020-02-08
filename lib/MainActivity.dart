import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

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
          Row(
            children: <Widget>[
              selectDate(
                foo: "Andata",
                enabled: true,
              ),
              selectDate(
                foo: "Ritorno",
                enabled: false,
              )
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

///Widget stateful per la selezione di andata e ritorno o sola andata, radio in a row || Cod.Widget1

class _RadioWidgetState extends State<RadioWidget> {
  int solaAndata = 0;
  int andataRitorno = 1;

  @override
  Widget build(BuildContext context) {
    return (new Row(
      children: <Widget>[
        new Flexible(
          child: InkWell(
            onTap: () => cambiaStato(),
            child: ListTile(
              title: const Text('Andata e ritorno'),
              enabled: true,
              leading: Radio(
                activeColor: Colors.blue,
                value: andataRitorno,
                groupValue: 1,
                onChanged: null,
              ),
            ),
          ),
        ),
        new Flexible(
          child: InkWell(
            onTap: () => cambiaStato(),
            child: ListTile(
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
        ),
      ],
    ));
  }

  @override
  void cambiaStato() {
    setState(() {
      if (solaAndata == 0) {
        solaAndata = 1;
        andataRitorno = 0;
      } else {
        solaAndata = 0;
        andataRitorno = 1;
      }
    });
  }
} //Widget stateful per la selezione di andata e ritorno o sola andata, radio in a row || Cod.Widget1

class InputTextAutoComplete extends StatefulWidget {
  @override
  _InputTextAutoComplete createState() => _InputTextAutoComplete();
}

///Widget per impostare il luogo di partenza e arrivo, autocompletante TODO

class _InputTextAutoComplete extends State<InputTextAutoComplete> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
} //da fare

class selectDate extends StatefulWidget {
  final String foo;
  final bool enabled;
  const selectDate({Key key, this.foo, this.enabled}) : super(key: key);
  @override
  _widgetSelectDate createState() => _widgetSelectDate();
}

class _widgetSelectDate extends State<selectDate> {
  DateTime selectedDate = DateTime.now();

  Future _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(DateTime
            .now()
            .year),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(widget.foo),
          RaisedButton(
            onPressed: () {
              if (widget.enabled) {
                _selectDate(context);
              } else {
                showInSnackBar("Bottone diattivato", context);
              }
            },
            child: Text("${selectedDate.toLocal()}".split(' ')[0]),
          ),
        ],
      ),
    );
  }
}

void showInSnackBar(String value, context) {
  Scaffold.of(context).showSnackBar(new SnackBar(
    content: new Text(value),
    duration: Duration(seconds: 2),
  ));
}