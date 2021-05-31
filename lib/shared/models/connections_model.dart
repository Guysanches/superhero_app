import 'dart:convert';

class Connections {
  String groupAffiliation;
  String relatives;
  Connections({
    required this.groupAffiliation,
    required this.relatives,
  });

  Connections copyWith({
    String? groupAffiliation,
    String? relatives,
  }) {
    return Connections(
      groupAffiliation: groupAffiliation ?? this.groupAffiliation,
      relatives: relatives ?? this.relatives,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'groupAffiliation': groupAffiliation,
      'relatives': relatives,
    };
  }

  factory Connections.fromMap(Map<String, dynamic> map) {
    return Connections(
      groupAffiliation: map['groupAffiliation'],
      relatives: map['relatives'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Connections.fromJson(String source) =>
      Connections.fromMap(json.decode(source));

  @override
  String toString() =>
      'Connections(groupAffiliation: $groupAffiliation, relatives: $relatives)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Connections &&
        other.groupAffiliation == groupAffiliation &&
        other.relatives == relatives;
  }

  @override
  int get hashCode => groupAffiliation.hashCode ^ relatives.hashCode;
}
