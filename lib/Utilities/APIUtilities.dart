
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';


class apiManager
{



  Future<String> GetFlightOffers() async {

    final response =
    await http.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2020-10-01&max=2',


        headers: {HttpHeaders.authorizationHeader: "Bearer 0AGLJn5ffiaC8b86z5TfsnbYfX5U"});

    if (response.statusCode == 200) {

      // If the call to the server was successful, parse the JSON.

      return response.body;

    } else {

      // If that call was not successful, throw an error.
      return null;
    }
  }


}

