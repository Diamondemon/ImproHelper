import 'dart:convert';

import 'impro.dart';

/// Match class
class ImprovMatch {
  String name;
  DateTime date;
  List<Impro> improList;

  /// [points[i]] is the number of points of team [i]
  List<int> points = [0, 0];
  /// [penalties[i]] is the number of penalties of team [i]
  List<int> penalties = [0, 0];
  /// [teams[i]] is the name of team [i]
  List<String> teams = ["Team A", "Team B"];

  ImprovMatch({required this.name, required this.date, required this.improList});

  Impro getImpro(int i) {
    return improList[i];
  }

  /// The number of improvisations in this match
  int get size {
    return improList.length;
  }

  void addImpro(Impro impro) {
    improList.add(impro);
  }

  /// Swaps improvisations [index] and [index-1] from the impro list
  ///
  /// The function performs safety bounds checks before the swap
  void moveOneUp({int? index, Impro? impro}) {
    int i = -1;
    if (index != null) {
      i = index;
    } else if (impro != null) {
      for (int index = 0; index < improList.length; index++) {
        if (improList[index] == impro) {
          i = index; break;
        }
      }
    }
    if (i == -1 || i == 0) return;
    Impro tmp = improList[i-1];
    improList[i-1] = improList[i];
    improList[i] = tmp;
  }

  /// Swaps improvisations [index] and [index+1] from the impro list
  ///
  /// The function performs safety bounds checks before the swap
  void moveOneDown({int? index, Impro? impro}) {
    int i = -1;
    if (index != null) {
      i = index;
    } else if (impro != null) {
      for (int index = 0; index < improList.length; index++) {
        if (improList[index] == impro) {
          i = index; break;
        }
      }
    }
    if (i == -1 || i == improList.length-1) return;
    Impro tmp = improList[i+1];
    improList[i+1] = improList[i];
    improList[i] = tmp;
  }

  void addTeam(String name) {
    teams.add(name);
    points.add(0);
    penalties.add(0);
  }

  void removeTeam(int index) {
    teams.removeAt(index);
    points.removeAt(index);
    penalties.removeAt(index);
  }

  void renameTeam(int index, String newName) {
    teams[index] = newName;
  }

  Map<String, dynamic> toJson(){
    return {
      "name": name,
      "date": date.millisecondsSinceEpoch,
      "improList": improList,
      "points": points,
      "penalties": penalties,
      "teams": teams,
    };
  }

  ImprovMatch.fromJson(Map<String, dynamic> json):
        name= json["name"],
        date= json["date"],
        improList= List<Impro>.from((json["improList"] as List).map((e) => Impro.fromJson(e)))
  ;

  ImprovMatch.fromDB(Map<String, dynamic> map):
        name= map["name"],
        date= map["date"],
        improList= List<Impro>.from((const JsonDecoder().convert(map["improvisations"]) as List).map((e) => Impro.fromJson(e))),
        points= List<int>.from(const JsonDecoder().convert(map["points"])),
        penalties= List<int>.from(map["penalties"]),
        teams= List<String>.from(map["teams"])
  ;
}
