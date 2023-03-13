class KorzinkaData {
  KorzinkaData({
    this.data,
    this.message,
    this.serverMessage,
    this.status,
    this.httpStatusCode,
  });

  Data? data;
  dynamic message;
  dynamic serverMessage;
  String? status;
  int? httpStatusCode;

  factory KorzinkaData.fromJson(Map<String, dynamic> json) => KorzinkaData(
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
    message: json["message"],
    serverMessage: json["serverMessage"],
    status: json["status"],
    httpStatusCode: json["httpStatusCode"],
  );

  Map<String, dynamic> toJson() => {
    "data": data?.toJson(),
    "message": message,
    "serverMessage": serverMessage,
    "status": status,
    "httpStatusCode": httpStatusCode,
  };
}

class Data {
  Data({
    this.list,
    this.count,
    this.priceRange,
  });

  List<ListElement>? list;
  int? count;
  PriceRange? priceRange;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
    count: json["count"],
    priceRange: json["priceRange"] == null ? null : PriceRange.fromJson(json["priceRange"]),
  );

  Map<String, dynamic> toJson() => {
    "list": list == null ? [] : List<dynamic>.from(list!.map((x) => x.toJson())),
    "count": count,
    "priceRange": priceRange?.toJson(),
  };
}

class ListElement {
  ListElement({
    this.id,
    this.name,
    this.keywords,
    this.description,
    this.skuNumber,
    this.price,
    this.storeQuantity,
    this.quantity,
    this.company,
    this.category,
    this.manufacturer,
    this.measurement,
    this.ingredients,
    this.storageMethods,
    this.metaTitle,
    this.headline,
    this.metaDescription,
    this.metaKeyword,
    this.createdDate,
    this.images,
    this.parentId,
    this.missing,
    this.oldPrice,
    this.addedWishlist,
    this.categoryList,
    this.ingredientProducts,
    this.attributes,
    this.companyGroup,
    this.sale,
    this.campaign,
    this.popular,
  });

  int? id;
  String? name;
  String? keywords;
  String? description;
  dynamic skuNumber;
  int? price;
  dynamic storeQuantity;
  dynamic quantity;
  Category? company;
  Category? category;
  Category? manufacturer;
  Category? measurement;
  dynamic ingredients;
  dynamic storageMethods;
  dynamic metaTitle;
  dynamic headline;
  dynamic metaDescription;
  dynamic metaKeyword;
  int? createdDate;
  List<Image>? images;
  int? parentId;
  bool? missing;
  int? oldPrice;
  bool? addedWishlist;
  List<dynamic>? categoryList;
  List<dynamic>? ingredientProducts;
  List<dynamic>? attributes;
  Category? companyGroup;
  bool? sale;
  bool? campaign;
  bool? popular;

  factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
    id: json["id"],
    name: json["name"],
    keywords: json["keywords"],
    description: json["description"],
    skuNumber: json["skuNumber"],
    price: json["price"],
    storeQuantity: json["storeQuantity"],
    quantity: json["quantity"],
    company: json["company"] == null ? null : Category.fromJson(json["company"]),
    category: json["category"] == null ? null : Category.fromJson(json["category"]),
    manufacturer: json["manufacturer"] == null ? null : Category.fromJson(json["manufacturer"]),
    measurement: json["measurement"] == null ? null : Category.fromJson(json["measurement"]),
    ingredients: json["ingredients"],
    storageMethods: json["storageMethods"],
    metaTitle: json["metaTitle"],
    headline: json["headline"],
    metaDescription: json["metaDescription"],
    metaKeyword: json["metaKeyword"],
    createdDate: json["createdDate"],
    images: json["images"] == null ? [] : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
    parentId: json["parentId"],
    missing: json["missing"],
    oldPrice: json["oldPrice"],
    addedWishlist: json["addedWishlist"],
    categoryList: json["categoryList"] == null ? [] : List<dynamic>.from(json["categoryList"]!.map((x) => x)),
    ingredientProducts: json["ingredientProducts"] == null ? [] : List<dynamic>.from(json["ingredientProducts"]!.map((x) => x)),
    attributes: json["attributes"] == null ? [] : List<dynamic>.from(json["attributes"]!.map((x) => x)),
    companyGroup: json["companyGroup"] == null ? null : Category.fromJson(json["companyGroup"]),
    sale: json["sale"],
    campaign: json["campaign"],
    popular: json["popular"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "keywords": keywords,
    "description": description,
    "skuNumber": skuNumber,
    "price": price,
    "storeQuantity": storeQuantity,
    "quantity": quantity,
    "company": company?.toJson(),
    "category": category?.toJson(),
    "manufacturer": manufacturer?.toJson(),
    "measurement": measurement?.toJson(),
    "ingredients": ingredients,
    "storageMethods": storageMethods,
    "metaTitle": metaTitle,
    "headline": headline,
    "metaDescription": metaDescription,
    "metaKeyword": metaKeyword,
    "createdDate": createdDate,
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x.toJson())),
    "parentId": parentId,
    "missing": missing,
    "oldPrice": oldPrice,
    "addedWishlist": addedWishlist,
    "categoryList": categoryList == null ? [] : List<dynamic>.from(categoryList!.map((x) => x)),
    "ingredientProducts": ingredientProducts == null ? [] : List<dynamic>.from(ingredientProducts!.map((x) => x)),
    "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x)),
    "companyGroup": companyGroup?.toJson(),
    "sale": sale,
    "campaign": campaign,
    "popular": popular,
  };
}

class Category {
  Category({
    this.id,
    this.name,
    this.description,
    this.code,
  });

  int? id;
  String? name;
  Description? description;
  Code? code;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    description: descriptionValues.map[json["description"]]!,
    code: codeValues.map[json["code"]]!,
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": descriptionValues.reverse[description],
    "code": codeValues.reverse[code],
  };
}

enum Code { PCS }

final codeValues = EnumValues({
  "pcs": Code.PCS
});

enum Description { EMPTY }

final descriptionValues = EnumValues({
  "шт": Description.EMPTY
});

class Image {
  Image({
    this.id,
    this.productId,
    this.main,
    this.largeUrl,
    this.mediumUrl,
    this.smallUrl,
  });

  int? id;
  int? productId;
  bool? main;
  String? largeUrl;
  String? mediumUrl;
  String? smallUrl;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    productId: json["productId"],
    main: json["main"],
    largeUrl: json["largeUrl"],
    mediumUrl: json["mediumUrl"],
    smallUrl: json["smallUrl"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "productId": productId,
    "main": main,
    "largeUrl": largeUrl,
    "mediumUrl": mediumUrl,
    "smallUrl": smallUrl,
  };
}

class PriceRange {
  PriceRange({
    this.min,
    this.max,
  });

  int? min;
  int? max;

  factory PriceRange.fromJson(Map<String, dynamic> json) => PriceRange(
    min: json["min"],
    max: json["max"],
  );

  Map<String, dynamic> toJson() => {
    "min": min,
    "max": max,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
