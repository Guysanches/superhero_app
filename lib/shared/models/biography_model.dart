import 'dart:convert';

import 'package:flutter/foundation.dart';

class Biography {
  String fullName;
  String alterEgos;
  List<String> aliases;
  String placeOfBirth;
  String firstAppearance;
  String publisher;
  String alignment;
  Biography({
    required this.fullName,
    required this.alterEgos,
    required this.aliases,
    required this.placeOfBirth,
    required this.firstAppearance,
    required this.publisher,
    required this.alignment,
  });

  Biography copyWith({
    String? fullName,
    String? alterEgos,
    List<String>? aliases,
    String? placeOfBirth,
    String? firstAppearance,
    String? publisher,
    String? alignment,
  }) {
    return Biography(
      fullName: fullName ?? this.fullName,
      alterEgos: alterEgos ?? this.alterEgos,
      aliases: aliases ?? this.aliases,
      placeOfBirth: placeOfBirth ?? this.placeOfBirth,
      firstAppearance: firstAppearance ?? this.firstAppearance,
      publisher: publisher ?? this.publisher,
      alignment: alignment ?? this.alignment,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fullName': fullName,
      'alterEgos': alterEgos,
      'aliases': aliases,
      'placeOfBirth': placeOfBirth,
      'firstAppearance': firstAppearance,
      'publisher': publisher,
      'alignment': alignment,
    };
  }

  factory Biography.fromMap(Map<String, dynamic> map) {
    return Biography(
      fullName: map['fullName'],
      alterEgos: map['alterEgos'],
      aliases: List<String>.from(map['aliases']),
      placeOfBirth: map['placeOfBirth'],
      firstAppearance: map['firstAppearance'],
      publisher: map['publisher'],
      alignment: map['alignment'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Biography.fromJson(String source) =>
      Biography.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Biography(fullName: $fullName, alterEgos: $alterEgos, aliases: $aliases, placeOfBirth: $placeOfBirth, firstAppearance: $firstAppearance, publisher: $publisher, alignment: $alignment)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Biography &&
        other.fullName == fullName &&
        other.alterEgos == alterEgos &&
        listEquals(other.aliases, aliases) &&
        other.placeOfBirth == placeOfBirth &&
        other.firstAppearance == firstAppearance &&
        other.publisher == publisher &&
        other.alignment == alignment;
  }

  @override
  int get hashCode {
    return fullName.hashCode ^
        alterEgos.hashCode ^
        aliases.hashCode ^
        placeOfBirth.hashCode ^
        firstAppearance.hashCode ^
        publisher.hashCode ^
        alignment.hashCode;
  }
}
