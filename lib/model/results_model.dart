class Results {
  String? _section;
  String? _subsection;
  String? _title;
  String? _abstract;
  String? _url;
  String? _uri;
  String? _byline;
  String? _itemType;
  String? _updatedDate;
  String? _createdDate;
  String? _publishedDate;
  String? _materialTypeFacet;
  String? _kicker;
  List<String>? _desFacet;
  List<String>? _orgFacet;
  List<String>? _perFacet;
  List<String>? _geoFacet;
  List<Multimedia>? _multimedia;
  String? _shortUrl;

  String? get section => _section;
  String? get subsection => _subsection;
  String? get title => _title;
  String? get abstract => _abstract;
  String? get url => _url;
  String? get uri => _uri;
  String? get byline => _byline;
  String? get itemType => _itemType;
  String? get updatedDate => _updatedDate;
  String? get createdDate => _createdDate;
  String? get publishedDate => _publishedDate;
  String? get materialTypeFacet => _materialTypeFacet;
  String? get kicker => _kicker;
  List<String>? get desFacet => _desFacet;
  List<String>? get orgFacet => _orgFacet;
  List<String>? get perFacet => _perFacet;
  List<String>? get geoFacet => _geoFacet;
  List<Multimedia>? get multimedia => _multimedia;
  String? get shortUrl => _shortUrl;

  Results(
      {String? section,
      String? subsection,
      String? title,
      String? abstract,
      String? url,
      String? uri,
      String? byline,
      String? itemType,
      String? updatedDate,
      String? createdDate,
      String? publishedDate,
      String? materialTypeFacet,
      String? kicker,
      List<String>? desFacet,
      List<String>? orgFacet,
      List<String>? perFacet,
      List<String>? geoFacet,
      List<Multimedia>? multimedia,
      String? shortUrl}) {
    _section = section;
    _subsection = subsection;
    _title = title;
    _abstract = abstract;
    _url = url;
    _uri = uri;
    _byline = byline;
    _itemType = itemType;
    _updatedDate = updatedDate;
    _createdDate = createdDate;
    _publishedDate = publishedDate;
    _materialTypeFacet = materialTypeFacet;
    _kicker = kicker;
    _desFacet = desFacet;
    _orgFacet = orgFacet;
    _perFacet = perFacet;
    _geoFacet = geoFacet;
    _multimedia = multimedia;
    _shortUrl = shortUrl;
  }

  Results.fromJson(dynamic json) {
    _section = json["section"];
    _subsection = json["subsection"];
    _title = json["title"];
    _abstract = json["abstract"];
    _url = json["url"];
    _uri = json["uri"];
    _byline = json["byline"];
    _itemType = json["item_type"];
    _updatedDate = json["updated_date"];
    _createdDate = json["created_date"];
    _publishedDate = json["published_date"];
    _materialTypeFacet = json["material_type_facet"];
    _kicker = json["kicker"];
    _desFacet =
        json["des_facet"] != null ? json["des_facet"].cast<String>() : [];
    _orgFacet =
        json["org_facet"] != null ? json["org_facet"].cast<String>() : [];
    _perFacet =
        json["per_facet"] != null ? json["per_facet"].cast<String>() : [];
    _geoFacet =
        json["geo_facet"] != null ? json["geo_facet"].cast<String>() : [];
    if (json["multimedia"] != null) {
      _multimedia = [];
      json["multimedia"].forEach((v) {
        _multimedia?.add(Multimedia.fromJson(v));
      });
    }
    _shortUrl = json["short_url"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["section"] = _section;
    map["subsection"] = _subsection;
    map["title"] = _title;
    map["abstract"] = _abstract;
    map["url"] = _url;
    map["uri"] = _uri;
    map["byline"] = _byline;
    map["item_type"] = _itemType;
    map["updated_date"] = _updatedDate;
    map["created_date"] = _createdDate;
    map["published_date"] = _publishedDate;
    map["material_type_facet"] = _materialTypeFacet;
    map["kicker"] = _kicker;
    map["des_facet"] = _desFacet;
    map["org_facet"] = _orgFacet;
    map["per_facet"] = _perFacet;
    map["geo_facet"] = _geoFacet;
    if (_multimedia != null) {
      map["multimedia"] = _multimedia?.map((v) => v.toJson()).toList();
    }
    map["short_url"] = _shortUrl;
    return map;
  }
}

class Multimedia {
  String? _url;
  String? _format;
  int? _height;
  int? _width;
  String? _type;
  String? _subtype;
  String? _caption;
  String? _copyright;

  String? get url => _url;
  String? get format => _format;
  int? get height => _height;
  int? get width => _width;
  String? get type => _type;
  String? get subtype => _subtype;
  String? get caption => _caption;
  String? get copyright => _copyright;

  Multimedia(
      {String? url,
      String? format,
      int? height,
      int? width,
      String? type,
      String? subtype,
      String? caption,
      String? copyright}) {
    _url = url;
    _format = format;
    _height = height;
    _width = width;
    _type = type;
    _subtype = subtype;
    _caption = caption;
    _copyright = copyright;
  }

  Multimedia.fromJson(dynamic json) {
    _url = json["url"];
    _format = json["format"];
    _height = json["height"];
    _width = json["width"];
    _type = json["type"];
    _subtype = json["subtype"];
    _caption = json["caption"];
    _copyright = json["copyright"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["url"] = _url;
    map["format"] = _format;
    map["height"] = _height;
    map["width"] = _width;
    map["type"] = _type;
    map["subtype"] = _subtype;
    map["caption"] = _caption;
    map["copyright"] = _copyright;
    return map;
  }
}
