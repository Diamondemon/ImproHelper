
import 'category.dart';
import 'utils.dart';

enum ImproType {
  none,
  mixed,
  compared
}

extension ImproTypeExtension on ImproType {
  String get name {
    switch (this) {
      case ImproType.none:
        return '-';
      case ImproType.mixed:
        return 'Mixed';
      case ImproType.compared:
        return 'Compared';
    }
  }
}

ImproType improTypeFrom(String s) {
  switch (s.toUpperCase().substring(0, 3)) {
    case "MIX":
      return ImproType.mixed;
    case "COM":
      return ImproType.compared;
    default:
      return ImproType.none;
  }
}

// Define what an impro is
class Impro {
  Category category;
  String theme;
  Duration prepTime;
  Duration improTime;
  int minPlayers;
  int maxPlayers;
  ImproType improType;

  // Constructor
  Impro({required this.category, required this.theme,
          required this.prepTime, required this.improTime,
          required this.minPlayers, required this.maxPlayers,
          required this.improType});

  String get prepTimeString {
    return timeToString(prepTime);
  }
  String get improTimeString {
    return timeToString(improTime);
  }
  String get type {
    return improType.name;
  }

  bool get isValid {
    return category.name.isNotEmpty && theme.isNotEmpty && !prepTime.isNegative && !improTime.isNegative &&
        !minPlayers.isNegative && maxPlayers >= minPlayers;
  }

  /// Deep copy of an impro
  Impro copy() {
    return Impro(category: category.copy(), theme: theme,
        prepTime: prepTime, improTime: improTime,
        minPlayers: minPlayers, maxPlayers: maxPlayers, improType: improType);
  }

  @override
  bool operator ==(Object other) {
    Impro impro = other as Impro;
    return category == impro.category && theme == impro.theme &&
        prepTime == impro.prepTime && improTime == impro.improTime &&
        minPlayers == impro.minPlayers && maxPlayers == impro.maxPlayers &&
        improType == impro.improType;
  }

  Map<String, dynamic> toJson(){
    return {
      "category": category.toJson(),
      "theme": theme,
      "prepTime": prepTime,
      "improTime": improTime,
      "minPlayers": minPlayers,
      "maxPlayers": maxPlayers,
      "improType": improType.index,
    };
  }

  static Impro fromJson(Map<String, dynamic> json){
    return Impro(
        category: Category.fromJson(json["category"]),
        theme: json["theme"],
        prepTime: Duration(seconds: json["prepTime"]),
        improTime: Duration(seconds: json["improTime"]),
        minPlayers: json["minPlayers"],
        maxPlayers: json["maxPlayers"],
        improType: ImproType.values[json["improType"]]
    );
  }

}
