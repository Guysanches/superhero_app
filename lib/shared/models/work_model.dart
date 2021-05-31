import 'dart:convert';

class Work {
  String occupation;
  String base;
  Work({
    required this.occupation,
    required this.base,
  });

  Work copyWith({
    String? occupation,
    String? base,
  }) {
    return Work(
      occupation: occupation ?? this.occupation,
      base: base ?? this.base,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'occupation': occupation,
      'base': base,
    };
  }

  factory Work.fromMap(Map<String, dynamic> map) {
    return Work(
      occupation: map['occupation'],
      base: map['base'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Work.fromJson(String source) => Work.fromMap(json.decode(source));

  @override
  String toString() => 'Work(occupation: $occupation, base: $base)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Work &&
        other.occupation == occupation &&
        other.base == base;
  }

  @override
  int get hashCode => occupation.hashCode ^ base.hashCode;
}
