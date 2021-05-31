import 'dart:convert';

class Images {
  String xs;
  String sm;
  String md;
  String lg;
  Images({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
  });

  Images copyWith({
    String? xs,
    String? sm,
    String? md,
    String? lg,
  }) {
    return Images(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'xs': xs,
      'sm': sm,
      'md': md,
      'lg': lg,
    };
  }

  factory Images.fromMap(Map<String, dynamic> map) {
    return Images(
      xs: map['xs'],
      sm: map['sm'],
      md: map['md'],
      lg: map['lg'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Images.fromJson(String source) => Images.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Images(xs: $xs, sm: $sm, md: $md, lg: $lg)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Images &&
        other.xs == xs &&
        other.sm == sm &&
        other.md == md &&
        other.lg == lg;
  }

  @override
  int get hashCode {
    return xs.hashCode ^ sm.hashCode ^ md.hashCode ^ lg.hashCode;
  }
}
