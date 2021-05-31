import 'dart:convert';
import 'appearance_model.dart';
import 'biography_model.dart';
import 'connections_model.dart';
import 'images_model.dart';
import 'powerstate_model.dart';
import 'work_model.dart';

class SuperHero {
  int id;
  String name;
  String slug;
  Powerstats powerstats;
  Appearance appearance;
  Biography biography;
  Work work;
  Connections connections;
  Images images;
  SuperHero({
    required this.id,
    required this.name,
    required this.slug,
    required this.powerstats,
    required this.appearance,
    required this.biography,
    required this.work,
    required this.connections,
    required this.images,
  });

  SuperHero copyWith({
    int? id,
    String? name,
    String? slug,
    Powerstats? powerstats,
    Appearance? appearance,
    Biography? biography,
    Work? work,
    Connections? connections,
    Images? images,
  }) {
    return SuperHero(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      powerstats: powerstats ?? this.powerstats,
      appearance: appearance ?? this.appearance,
      biography: biography ?? this.biography,
      work: work ?? this.work,
      connections: connections ?? this.connections,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'powerstats': powerstats.toMap(),
      'appearance': appearance.toMap(),
      'biography': biography.toMap(),
      'work': work.toMap(),
      'connections': connections.toMap(),
      'images': images.toMap(),
    };
  }

  factory SuperHero.fromMap(Map<String, dynamic> map) {
    return SuperHero(
      id: map['id'],
      name: map['name'],
      slug: map['slug'],
      powerstats: Powerstats.fromMap(map['powerstats']),
      appearance: Appearance.fromMap(map['appearance']),
      biography: Biography.fromMap(map['biography']),
      work: Work.fromMap(map['work']),
      connections: Connections.fromMap(map['connections']),
      images: Images.fromMap(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SuperHero.fromJson(String source) =>
      SuperHero.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SuperHero(id: $id, name: $name, slug: $slug, powerstats: $powerstats, appearance: $appearance, biography: $biography, work: $work, connections: $connections, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SuperHero &&
        other.id == id &&
        other.name == name &&
        other.slug == slug &&
        other.powerstats == powerstats &&
        other.appearance == appearance &&
        other.biography == biography &&
        other.work == work &&
        other.connections == connections &&
        other.images == images;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        powerstats.hashCode ^
        appearance.hashCode ^
        biography.hashCode ^
        work.hashCode ^
        connections.hashCode ^
        images.hashCode;
  }
}
