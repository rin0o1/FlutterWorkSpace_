// Flutter code sample for AboutListTile

// This sample shows two ways to open [AboutDialog]. The first one
// uses an [AboutListTile], and the second uses the [showAboutDialog] function.



import 'package:flutter/material.dart';
import 'MainActivity.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void main() => runApp(MyApp());


/// This Widget is the main application widget.
 class MyApp extends StatelessWidget {

  static const String _title = 'Flutter Code Sample';

  MyApp()
  {
    fetchPost();
  }

  void fetchPost() async {

    final response =
    await http.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2020-10-01&max=2',
                    headers: {HttpHeaders.authorizationHeader: "Bearer Vkovwmy1WGRcoS0xv2lDRTbmN78z" });

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      print(response.body);
    } else  {
      // If that call was not successful, throw an error.
      throw Exception('Errore al caricamento');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MainActivity(),
    );
  }

}


