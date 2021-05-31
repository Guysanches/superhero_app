import 'dart:convert';

import 'package:flutter/foundation.dart';

class Appearance {
  String gender;
  String race;
  List<String> height;
  List<String> weight;
  String eyeColor;
  String hairColor;
  Appearance({
    required this.gender,
    required this.race,
    required this.height,
    required this.weight,
    required this.eyeColor,
    required this.hairColor,
  });

  Appearance copyWith({
    String? gender,
    String? race,
    List<String>? height,
    List<String>? weight,
    String? eyeColor,
    String? hairColor,
  }) {
    return Appearance(
      gender: gender ?? this.gender,
      race: race ?? this.race,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      eyeColor: eyeColor ?? this.eyeColor,
      hairColor: hairColor ?? this.hairColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'gender': gender,
      'race': race,
      'height': height,
      'weight': weight,
      'eyeColor': eyeColor,
      'hairColor': hairColor,
    };
  }

  factory Appearance.fromMap(Map<String, dynamic> map) {
    return Appearance(
      gender: map['gender'],
      race: map['race'],
      height: List<String>.from(map['height']),
      weight: List<String>.from(map['weight']),
      eyeColor: map['eyeColor'],
      hairColor: map['hairColor'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Appearance.fromJson(String source) =>
      Appearance.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Appearance(gender: $gender, race: $race, height: $height, weight: $weight, eyeColor: $eyeColor, hairColor: $hairColor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Appearance &&
        other.gender == gender &&
        other.race == race &&
        listEquals(other.height, height) &&
        listEquals(other.weight, weight) &&
        other.eyeColor == eyeColor &&
        other.hairColor == hairColor;
  }

  @override
  int get hashCode {
    return gender.hashCode ^
        race.hashCode ^
        height.hashCode ^
        weight.hashCode ^
        eyeColor.hashCode ^
        hairColor.hashCode;
  }
}
