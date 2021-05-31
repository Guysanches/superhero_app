import 'dart:convert';

class Powerstats {
  int intelligence;
  int strength;
  int speed;
  int durability;
  int power;
  int combat;
  Powerstats({
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.durability,
    required this.power,
    required this.combat,
  });

  Powerstats copyWith({
    int? intelligence,
    int? strength,
    int? speed,
    int? durability,
    int? power,
    int? combat,
  }) {
    return Powerstats(
      intelligence: intelligence ?? this.intelligence,
      strength: strength ?? this.strength,
      speed: speed ?? this.speed,
      durability: durability ?? this.durability,
      power: power ?? this.power,
      combat: combat ?? this.combat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'intelligence': intelligence,
      'strength': strength,
      'speed': speed,
      'durability': durability,
      'power': power,
      'combat': combat,
    };
  }

  factory Powerstats.fromMap(Map<String, dynamic> map) {
    return Powerstats(
      intelligence: map['intelligence'],
      strength: map['strength'],
      speed: map['speed'],
      durability: map['durability'],
      power: map['power'],
      combat: map['combat'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Powerstats.fromJson(String source) =>
      Powerstats.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Powerstats(intelligence: $intelligence, strength: $strength, speed: $speed, durability: $durability, power: $power, combat: $combat)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Powerstats &&
        other.intelligence == intelligence &&
        other.strength == strength &&
        other.speed == speed &&
        other.durability == durability &&
        other.power == power &&
        other.combat == combat;
  }

  @override
  int get hashCode {
    return intelligence.hashCode ^
        strength.hashCode ^
        speed.hashCode ^
        durability.hashCode ^
        power.hashCode ^
        combat.hashCode;
  }
}
