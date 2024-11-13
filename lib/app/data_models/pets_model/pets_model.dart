class PetsModel {
  String? name;
  String? shortInfo;
  String? climate;
  List<String>? food;
  List<String>? diseases;
  List<Cure>? cures;
  List<String>? preventiveCare;
  List<String>? advantages;
  List<String>? disadvantages;

  PetsModel({
    this.name,
    this.shortInfo,
    this.climate,
    this.food,
    this.diseases,
    this.cures,
    this.preventiveCare,
    this.advantages,
    this.disadvantages,
  });

  factory PetsModel.fromJson(Map<String, dynamic> json) => PetsModel(
        name: json['name'] as String?,
        shortInfo: json['shortInfo'] as String?,
        climate: json['climate'] as String?,
        food: json['food'] as List<String>?,
        diseases: json['diseases'] as List<String>?,
        cures: (json['cures'] as List<dynamic>?)
            ?.map((e) => Cure.fromJson(e as Map<String, dynamic>))
            .toList(),
        preventiveCare: json['preventiveCare'] as List<String>?,
        advantages: json['advantages'] as List<String>?,
        disadvantages: json['disadvantages'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'shortInfo': shortInfo,
        'climate': climate,
        'food': food,
        'diseases': diseases,
        'cures': cures?.map((e) => e.toJson()).toList(),
        'preventiveCare': preventiveCare,
        'advantages': advantages,
        'disadvantages': disadvantages,
      };
}

class Cure {
  String? title;
  String? cure;

  Cure({this.title, this.cure});

  factory Cure.fromJson(Map<String, dynamic> json) => Cure(
        title: json['title'] as String?,
        cure: json['cure'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'cure': cure,
      };
}
