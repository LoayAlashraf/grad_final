// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<FavModel> favModelFromJson(String str) =>
    List<FavModel>.from(json.decode(str).map((x) => FavModel.fromJson(x)));

String favModelToJson(List<FavModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FavModel {
  FavModel({
    this.id,
    this.userId,
    this.productId,
    this.productImage,
    this.productDiscount,
    this.productCost,
    this.producCount,
    this.isCart,
    this.isActive,
  });

  int? id;
  int? userId;
  int? productId;
  String? productImage;
  String? productDiscount;
  String? productCost;
  String? producCount;
  bool? isCart;
  bool? isActive;

  factory FavModel.fromJson(Map<String, dynamic> json) => FavModel(
    id: json["id"],
    userId: json["userId"],
    productId: json["productId"],
    productImage: json["productImage"],
    productDiscount: json["productDiscount"],
    productCost: json["productCost"],
    producCount: json["producCount"],
    isCart: json["is_Cart"],
    isActive: json["is_Active"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "userId": userId,
    "productId": productId,
    "productImage": productImage,
    "productDiscount": productDiscount,
    "productCost": productCost,
    "producCount": producCount,
    "is_Cart": isCart,
    "is_Active": isActive,
  };
}
