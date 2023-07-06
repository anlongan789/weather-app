// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

List<City> listCityFromJson(String str) =>
    List<City>.from(json.decode(str)["data"].map((x) => City.fromJson(x)));

String cityToJson(City data) => json.encode(data.toJson());

class City extends Equatable {
  final String iso2;
  final String iso3;
  final String country;
  final List<String> cities;

  const City({
    required this.iso2,
    required this.iso3,
    required this.country,
    required this.cities,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        iso2: json["iso2"],
        iso3: json["iso3"],
        country: json["country"],
        cities: List<String>.from(json["cities"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "iso2": iso2,
        "iso3": iso3,
        "country": country,
        "cities": List<dynamic>.from(cities.map((x) => x)),
      };

  @override
  List<Object> get props => [iso2, iso3, country, cities];
}
