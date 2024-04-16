// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class menumodel {
  // Map meals;
String name;
String description;
num price;
String howToSell;
List<String> images;
String category;
  menumodel({
    required this.name,
    required this.description,
    required this.price,
    required this.howToSell,
    required this.images,
    required this.category,
  });

  menumodel copyWith({
    String? name,
    String? description,
    num? price,
    String? howToSell,
    List<String>? images,
    String? category,
  }) {
    return menumodel(
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      howToSell: howToSell ?? this.howToSell,
      images: images ?? this.images,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'howToSell': howToSell,
      'images': images,
      'category': category,
    };
  }

  factory menumodel.fromMap(Map<String, dynamic> map) {
    return menumodel(
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as num,
      howToSell: map['howToSell'] as String,
      images: List.generate(map['images'].length, (index) => map['images'][index]),
      category: map['category'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory menumodel.fromJson(String source) => menumodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'menumodel(name: $name, description: $description, price: $price, howToSell: $howToSell, images: $images, category: $category)';
  }

  @override
  bool operator ==(covariant menumodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.howToSell == howToSell &&
      listEquals(other.images, images) &&
      other.category == category;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      howToSell.hashCode ^
      images.hashCode ^
      category.hashCode;
  }
}
