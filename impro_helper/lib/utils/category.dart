import 'package:flutter/material.dart';

enum Energy {
  low,
  medium,
  high
}

extension EnergyExtension on Energy {
  String get name {
    switch (this) {
      case Energy.low:
        return 'Low';
      case Energy.medium:
        return 'Medium';
      case Energy.high:
        return 'High';
    }
  }
  Color get color {
    switch (this) {
      case Energy.low:
        return Colors.blue;
      case Energy.medium:
        return Colors.green;
      case Energy.high:
        return Colors.orange;
    }
  }
}

Energy energyFrom(String s) {
  switch (s.toUpperCase().substring(0, 3)) {
    case "LOW":
      return Energy.low;
    case "MED":
      return Energy.medium;
    case "HIG":
      return Energy.high;
  }
  throw("Not an energy name");
}

/// Category of improvisation, with provided information
class Category {
  String name;

  String description;

  Energy energy;

  // Constructor
  Category({required this.name, required this.energy, this.description=""});

  String get energyString {
    return energy.name;
  }

  Category copy() {
    return Category(name: name, energy: energy, description: description);
  }

  @override
  bool operator ==(Object other) {
    Category category = other as Category;
    return name == category.name && energy == category.energy;
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "description": description,
      "energy": energy.index,
    };
  }

  Category.fromJson(Map<String, dynamic> json) : name= json["name"], energy= Energy.values[json["energy"]], description= json["description"];
}
