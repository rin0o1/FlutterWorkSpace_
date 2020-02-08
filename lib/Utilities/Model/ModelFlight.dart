
class FlightOfferRequest
{
    String origin;
    String departureData;
    bool oneWay;
    int Duration;
    bool nonStop;
    double maxPrice;


    String get _origin => origin;
    set _origin(String origin) => origin= _origin;

    String get _depertureData => _depertureData;
    set _depertureData (String departureData) => departureData= _depertureData;

    bool get _oneWay => oneWay;
    set _oneWay (bool oneWay) => oneWay= _oneWay;

    int get _Duration => Duration;
    set _Duration (int Duration) => Duration = _Duration;

    bool get _nonStop => nonStop;
    set _nonStop (bool nonStop) => nonStop =_nonStop;

    double get _maxPrice => maxPrice;
    set _maxPrice (double maxPrice )=> maxPrice= _maxPrice;

}


class FlightOffer {
  List<Data> _data;
  Dictionaries _dictionaries;
  Meta _meta;

  FlightOffer({List<Data> data, Dictionaries dictionaries, Meta meta}) {
    this._data = data;
    this._dictionaries = dictionaries;
    this._meta = meta;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;
  Dictionaries get dictionaries => _dictionaries;
  set dictionaries(Dictionaries dictionaries) => _dictionaries = dictionaries;
  Meta get meta => _meta;
  set meta(Meta meta) => _meta = meta;

  FlightOffer.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
    _dictionaries = json['dictionaries'] != null
        ? new Dictionaries.fromJson(json['dictionaries'])
        : null;
    _meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    if (this._dictionaries != null) {
      data['dictionaries'] = this._dictionaries.toJson();
    }
    if (this._meta != null) {
      data['meta'] = this._meta.toJson();
    }
    return data;
  }
}

class Data {
  String _type;
  String _id;
  List<OfferItems> _offerItems;

  Data({String type, String id, List<OfferItems> offerItems}) {
    this._type = type;
    this._id = id;
    this._offerItems = offerItems;
  }

  String get type => _type;
  set type(String type) => _type = type;
  String get id => _id;
  set id(String id) => _id = id;
  List<OfferItems> get offerItems => _offerItems;
  set offerItems(List<OfferItems> offerItems) => _offerItems = offerItems;

  Data.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _id = json['id'];
    if (json['offerItems'] != null) {
      _offerItems = new List<OfferItems>();
      json['offerItems'].forEach((v) {
        _offerItems.add(new OfferItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this._type;
    data['id'] = this._id;
    if (this._offerItems != null) {
      data['offerItems'] = this._offerItems.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OfferItems {
  List<Services> _services;
  Price _price;
  Price _pricePerAdult;

  OfferItems({List<Services> services, Price price, Price pricePerAdult}) {
    this._services = services;
    this._price = price;
    this._pricePerAdult = pricePerAdult;
  }

  List<Services> get services => _services;
  set services(List<Services> services) => _services = services;
  Price get price => _price;
  set price(Price price) => _price = price;
  Price get pricePerAdult => _pricePerAdult;
  set pricePerAdult(Price pricePerAdult) => _pricePerAdult = pricePerAdult;

  OfferItems.fromJson(Map<String, dynamic> json) {
    if (json['services'] != null) {
      _services = new List<Services>();
      json['services'].forEach((v) {
        _services.add(new Services.fromJson(v));
      });
    }
    _price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    _pricePerAdult = json['pricePerAdult'] != null
        ? new Price.fromJson(json['pricePerAdult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._services != null) {
      data['services'] = this._services.map((v) => v.toJson()).toList();
    }
    if (this._price != null) {
      data['price'] = this._price.toJson();
    }
    if (this._pricePerAdult != null) {
      data['pricePerAdult'] = this._pricePerAdult.toJson();
    }
    return data;
  }
}

class Services {
  List<Segments> _segments;

  Services({List<Segments> segments}) {
    this._segments = segments;
  }

  List<Segments> get segments => _segments;
  set segments(List<Segments> segments) => _segments = segments;

  Services.fromJson(Map<String, dynamic> json) {
    if (json['segments'] != null) {
      _segments = new List<Segments>();
      json['segments'].forEach((v) {
        _segments.add(new Segments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._segments != null) {
      data['segments'] = this._segments.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Segments {
  FlightSegment _flightSegment;
  PricingDetailPerAdult _pricingDetailPerAdult;

  Segments(
      {FlightSegment flightSegment,
        PricingDetailPerAdult pricingDetailPerAdult}) {
    this._flightSegment = flightSegment;
    this._pricingDetailPerAdult = pricingDetailPerAdult;
  }

  FlightSegment get flightSegment => _flightSegment;
  set flightSegment(FlightSegment flightSegment) =>
      _flightSegment = flightSegment;
  PricingDetailPerAdult get pricingDetailPerAdult => _pricingDetailPerAdult;
  set pricingDetailPerAdult(PricingDetailPerAdult pricingDetailPerAdult) =>
      _pricingDetailPerAdult = pricingDetailPerAdult;

  Segments.fromJson(Map<String, dynamic> json) {
    _flightSegment = json['flightSegment'] != null
        ? new FlightSegment.fromJson(json['flightSegment'])
        : null;
    _pricingDetailPerAdult = json['pricingDetailPerAdult'] != null
        ? new PricingDetailPerAdult.fromJson(json['pricingDetailPerAdult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._flightSegment != null) {
      data['flightSegment'] = this._flightSegment.toJson();
    }
    if (this._pricingDetailPerAdult != null) {
      data['pricingDetailPerAdult'] = this._pricingDetailPerAdult.toJson();
    }
    return data;
  }
}

class FlightSegment {
  Departure _departure;
  Departure _arrival;
  String _carrierCode;
  String _number;
  Aircraft _aircraft;
  Operating _operating;
  String _duration;

  FlightSegment(
      {Departure departure,
        Departure arrival,
        String carrierCode,
        String number,
        Aircraft aircraft,
        Operating operating,
        String duration}) {
    this._departure = departure;
    this._arrival = arrival;
    this._carrierCode = carrierCode;
    this._number = number;
    this._aircraft = aircraft;
    this._operating = operating;
    this._duration = duration;
  }

  Departure get departure => _departure;
  set departure(Departure departure) => _departure = departure;
  Departure get arrival => _arrival;
  set arrival(Departure arrival) => _arrival = arrival;
  String get carrierCode => _carrierCode;
  set carrierCode(String carrierCode) => _carrierCode = carrierCode;
  String get number => _number;
  set number(String number) => _number = number;
  Aircraft get aircraft => _aircraft;
  set aircraft(Aircraft aircraft) => _aircraft = aircraft;
  Operating get operating => _operating;
  set operating(Operating operating) => _operating = operating;
  String get duration => _duration;
  set duration(String duration) => _duration = duration;

  FlightSegment.fromJson(Map<String, dynamic> json) {
    _departure = json['departure'] != null
        ? new Departure.fromJson(json['departure'])
        : null;
    _arrival = json['arrival'] != null
        ? new Departure.fromJson(json['arrival'])
        : null;
    _carrierCode = json['carrierCode'];
    _number = json['number'];
    _aircraft = json['aircraft'] != null
        ? new Aircraft.fromJson(json['aircraft'])
        : null;
    _operating = json['operating'] != null
        ? new Operating.fromJson(json['operating'])
        : null;
    _duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._departure != null) {
      data['departure'] = this._departure.toJson();
    }
    if (this._arrival != null) {
      data['arrival'] = this._arrival.toJson();
    }
    data['carrierCode'] = this._carrierCode;
    data['number'] = this._number;
    if (this._aircraft != null) {
      data['aircraft'] = this._aircraft.toJson();
    }
    if (this._operating != null) {
      data['operating'] = this._operating.toJson();
    }
    data['duration'] = this._duration;
    return data;
  }
}

class Departure {
  String _iataCode;
  String _at;
  String _terminal;

  Departure({String iataCode, String at, String terminal}) {
    this._iataCode = iataCode;
    this._at = at;
    this._terminal = terminal;
  }

  String get iataCode => _iataCode;
  set iataCode(String iataCode) => _iataCode = iataCode;
  String get at => _at;
  set at(String at) => _at = at;
  String get terminal => _terminal;
  set terminal(String terminal) => _terminal = terminal;

  Departure.fromJson(Map<String, dynamic> json) {
    _iataCode = json['iataCode'];
    _at = json['at'];
    _terminal = json['terminal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iataCode'] = this._iataCode;
    data['at'] = this._at;
    data['terminal'] = this._terminal;
    return data;
  }
}

class Aircraft {
  String _code;

  Aircraft({String code}) {
    this._code = code;
  }

  String get code => _code;
  set code(String code) => _code = code;

  Aircraft.fromJson(Map<String, dynamic> json) {
    _code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this._code;
    return data;
  }
}

class Operating {
  String _carrierCode;
  String _number;

  Operating({String carrierCode, String number}) {
    this._carrierCode = carrierCode;
    this._number = number;
  }

  String get carrierCode => _carrierCode;
  set carrierCode(String carrierCode) => _carrierCode = carrierCode;
  String get number => _number;
  set number(String number) => _number = number;

  Operating.fromJson(Map<String, dynamic> json) {
    _carrierCode = json['carrierCode'];
    _number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['carrierCode'] = this._carrierCode;
    data['number'] = this._number;
    return data;
  }
}

class PricingDetailPerAdult {
  String _travelClass;
  String _fareClass;
  int _availability;
  String _fareBasis;

  PricingDetailPerAdult(
      {String travelClass,
        String fareClass,
        int availability,
        String fareBasis}) {
    this._travelClass = travelClass;
    this._fareClass = fareClass;
    this._availability = availability;
    this._fareBasis = fareBasis;
  }

  String get travelClass => _travelClass;
  set travelClass(String travelClass) => _travelClass = travelClass;
  String get fareClass => _fareClass;
  set fareClass(String fareClass) => _fareClass = fareClass;
  int get availability => _availability;
  set availability(int availability) => _availability = availability;
  String get fareBasis => _fareBasis;
  set fareBasis(String fareBasis) => _fareBasis = fareBasis;

  PricingDetailPerAdult.fromJson(Map<String, dynamic> json) {
    _travelClass = json['travelClass'];
    _fareClass = json['fareClass'];
    _availability = json['availability'];
    _fareBasis = json['fareBasis'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['travelClass'] = this._travelClass;
    data['fareClass'] = this._fareClass;
    data['availability'] = this._availability;
    data['fareBasis'] = this._fareBasis;
    return data;
  }
}

class Price {
  String _total;
  String _totalTaxes;

  Price({String total, String totalTaxes}) {
    this._total = total;
    this._totalTaxes = totalTaxes;
  }

  String get total => _total;
  set total(String total) => _total = total;
  String get totalTaxes => _totalTaxes;
  set totalTaxes(String totalTaxes) => _totalTaxes = totalTaxes;

  Price.fromJson(Map<String, dynamic> json) {
    _total = json['total'];
    _totalTaxes = json['totalTaxes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this._total;
    data['totalTaxes'] = this._totalTaxes;
    return data;
  }
}

class Dictionaries {
  Carriers _carriers;
  Currencies _currencies;
  Aircraft _aircraft;
  Locations _locations;

  Dictionaries(
      {Carriers carriers,
        Currencies currencies,
        Aircraft aircraft,
        Locations locations}) {
    this._carriers = carriers;
    this._currencies = currencies;
    this._aircraft = aircraft;
    this._locations = locations;
  }

  Carriers get carriers => _carriers;
  set carriers(Carriers carriers) => _carriers = carriers;
  Currencies get currencies => _currencies;
  set currencies(Currencies currencies) => _currencies = currencies;
  Aircraft get aircraft => _aircraft;
  set aircraft(Aircraft aircraft) => _aircraft = aircraft;
  Locations get locations => _locations;
  set locations(Locations locations) => _locations = locations;

  Dictionaries.fromJson(Map<String, dynamic> json) {
    _carriers = json['carriers'] != null
        ? new Carriers.fromJson(json['carriers'])
        : null;
    _currencies = json['currencies'] != null
        ? new Currencies.fromJson(json['currencies'])
        : null;
    _aircraft = json['aircraft'] != null
        ? new Aircraft.fromJson(json['aircraft'])
        : null;
    _locations = json['locations'] != null
        ? new Locations.fromJson(json['locations'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._carriers != null) {
      data['carriers'] = this._carriers.toJson();
    }
    if (this._currencies != null) {
      data['currencies'] = this._currencies.toJson();
    }
    if (this._aircraft != null) {
      data['aircraft'] = this._aircraft.toJson();
    }
    if (this._locations != null) {
      data['locations'] = this._locations.toJson();
    }
    return data;
  }
}

class Carriers {
  String _s6X;
  String _dL;

  Carriers({String s6X, String dL}) {
    this._s6X = s6X;
    this._dL = dL;
  }

  String get s6X => _s6X;
  set s6X(String s6X) => _s6X = s6X;
  String get dL => _dL;
  set dL(String dL) => _dL = dL;

  Carriers.fromJson(Map<String, dynamic> json) {
    _s6X = json['6X'];
    _dL = json['DL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['6X'] = this._s6X;
    data['DL'] = this._dL;
    return data;
  }
}

class Currencies {
  String _eUR;

  Currencies({String eUR}) {
    this._eUR = eUR;
  }

  String get eUR => _eUR;
  set eUR(String eUR) => _eUR = eUR;

  Currencies.fromJson(Map<String, dynamic> json) {
    _eUR = json['EUR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EUR'] = this._eUR;
    return data;
  }
}


class Locations {
  EWR _eWR;
  EWR _mAD;
  EWR _lHR;
  EWR _jFK;

  Locations({EWR eWR, EWR mAD, EWR lHR, EWR jFK}) {
    this._eWR = eWR;
    this._mAD = mAD;
    this._lHR = lHR;
    this._jFK = jFK;
  }

  EWR get eWR => _eWR;
  set eWR(EWR eWR) => _eWR = eWR;
  EWR get mAD => _mAD;
  set mAD(EWR mAD) => _mAD = mAD;
  EWR get lHR => _lHR;
  set lHR(EWR lHR) => _lHR = lHR;
  EWR get jFK => _jFK;
  set jFK(EWR jFK) => _jFK = jFK;

  Locations.fromJson(Map<String, dynamic> json) {
    _eWR = json['EWR'] != null ? new EWR.fromJson(json['EWR']) : null;
    _mAD = json['MAD'] != null ? new EWR.fromJson(json['MAD']) : null;
    _lHR = json['LHR'] != null ? new EWR.fromJson(json['LHR']) : null;
    _jFK = json['JFK'] != null ? new EWR.fromJson(json['JFK']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._eWR != null) {
      data['EWR'] = this._eWR.toJson();
    }
    if (this._mAD != null) {
      data['MAD'] = this._mAD.toJson();
    }
    if (this._lHR != null) {
      data['LHR'] = this._lHR.toJson();
    }
    if (this._jFK != null) {
      data['JFK'] = this._jFK.toJson();
    }
    return data;
  }
}

class EWR {
  String _subType;
  String _detailedName;

  EWR({String subType, String detailedName}) {
    this._subType = subType;
    this._detailedName = detailedName;
  }

  String get subType => _subType;
  set subType(String subType) => _subType = subType;
  String get detailedName => _detailedName;
  set detailedName(String detailedName) => _detailedName = detailedName;

  EWR.fromJson(Map<String, dynamic> json) {
    _subType = json['subType'];
    _detailedName = json['detailedName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subType'] = this._subType;
    data['detailedName'] = this._detailedName;
    return data;
  }
}

class Meta {
  Links _links;
  String _currency;
  Defaults _defaults;

  Meta({Links links, String currency, Defaults defaults}) {
    this._links = links;
    this._currency = currency;
    this._defaults = defaults;
  }

  Links get links => _links;
  set links(Links links) => _links = links;
  String get currency => _currency;
  set currency(String currency) => _currency = currency;
  Defaults get defaults => _defaults;
  set defaults(Defaults defaults) => _defaults = defaults;

  Meta.fromJson(Map<String, dynamic> json) {
    _links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    _currency = json['currency'];
    _defaults = json['defaults'] != null
        ? new Defaults.fromJson(json['defaults'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    data['currency'] = this._currency;
    if (this._defaults != null) {
      data['defaults'] = this._defaults.toJson();
    }
    return data;
  }
}

class Links {
  String _self;

  Links({String self}) {
    this._self = self;
  }

  String get self => _self;
  set self(String self) => _self = self;

  Links.fromJson(Map<String, dynamic> json) {
    _self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this._self;
    return data;
  }
}

class Defaults {
  bool _nonStop;
  int _adults;

  Defaults({bool nonStop, int adults}) {
    this._nonStop = nonStop;
    this._adults = adults;
  }

  bool get nonStop => _nonStop;
  set nonStop(bool nonStop) => _nonStop = nonStop;
  int get adults => _adults;
  set adults(int adults) => _adults = adults;

  Defaults.fromJson(Map<String, dynamic> json) {
    _nonStop = json['nonStop'];
    _adults = json['adults'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nonStop'] = this._nonStop;
    data['adults'] = this._adults;
    return data;
  }
}