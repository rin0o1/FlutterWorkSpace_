
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'Model/ModelFlight.dart';


class apiManager
{



  Future<FlightOffer> GetFlightOffers_( FlightOfferRequest flightOfferRequest) async {

    if (flightOfferRequest== null){return null;}
    final response =
    await http.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2020-10-01&max=2',
        headers: {HttpHeaders.authorizationHeader: "Bearer BJqCFGFEqWr3GBiosqavoHKATi6c"});

    if (response.statusCode == 200) {

      Map FlightMap = jsonDecode(response.body.toString());
      return FlightOffer.fromJson(FlightMap);

    } else {
      return null;
    }
  }

  Future<FlightOffer> GetFlightOffers() async {

    final response =
    await http.get('https://test.api.amadeus.com/v1/shopping/flight-offers?origin=NYC&destination=MAD&departureDate=2020-10-01&max=2',
        headers: {HttpHeaders.authorizationHeader: "Bearer BJqCFGFEqWr3GBiosqavoHKATi6c"});

    if (response.statusCode == 200) {

      Map FlightMap = jsonDecode(response.body.toString());
      return FlightOffer.fromJson(FlightMap);

    } else {
            return null;
    }
  }


}

