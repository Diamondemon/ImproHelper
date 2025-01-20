
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:impro_helper/utils/impro.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:developer' as developer;

import '../utils/category.dart';
import '../utils/improv_match.dart';

SessionData session(context) => Provider.of<SessionData>(context, listen: false);

class SessionData with ChangeNotifier {
  Database? _db;

  final ValueNotifier<int> _currentMatchIndex = ValueNotifier(-1);

  /// App preferences
  static const storage = FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    )
  );

  int get currentMatchIndex => _currentMatchIndex.value;

  set currentMatchIndex(int i) {
    _currentMatchIndex.value = i;
    storeIndex();
  }

  ValueNotifier<int> get indexNotifier => _currentMatchIndex;


  /// Stores the CurrentMatchIndex in the application's preferences.
  void storeIndex() async{
    await storage.write(key: "currentMatchIndex", value: currentMatchIndex.toString());
  }

  /// Reads the Index contained in the preferences of the app.
  /// If none is found, save the default value.
  Future<void> loadIndex() async {
    String? stringIndex = await storage.read(key: "currentMatchIndex");
    if (stringIndex==null){
      storeIndex();
    }
    else {
      currentMatchIndex = int.parse(stringIndex);
    }
  }

  /// Opens the database and create the tables if they don't exist.
  Future<void> openDB() async{
    if (_db==null){
      String path = join(await getDatabasesPath(), 'ImproHelper.db');
      _db = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) async {
            await db.execute('''
          CREATE TABLE IF NOT EXISTS categories (
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            description TEXT NOT NULL,
            energy INTEGER NOT NULL
          );
        ''');
            await db.execute('''
          CREATE TABLE IF NOT EXISTS themes (
            id INTEGER PRIMARY KEY,
            name TEXT NOT NULL
          );
        ''');
            await db.execute('''
          CREATE TABLE IF NOT EXISTS improvisations (
            id INTEGER PRIMARY KEY,
            themeId INTEGER NOT NULL,
            FOREIGN KEY (themeId) REFERENCES themes (id)
            categoryId INTEGER NOT NULL,
            FOREIGN KEY (categoryId) REFERENCES categories (id)
            improType INTEGER NOT NULL,
            minPlayers INTEGER NOT NULL,
            maxPlayers INTEGER NOT NULL,
            prepTime INTEGER NOT NULL,
            improTime INTEGER NOT NULL
          );
        ''');
            await db.execute('''
          CREATE TABLE IF NOT EXISTS matches (
            id INTEGER PRIMARY KEY,
            date INTEGER NOT NULL,
            improvisations TEXT NOT NULL,
            points TEXT NOT NULL,
            penalties TEXT NOT NULL,
            teams TEXT NOT NULL
          );
        ''');
            await db.execute('''
          CREATE TABLE IF NOT EXISTS match_to_improv (
            id INTEGER PRIMARY KEY,
            date INTEGER NOT NULL,
            improvisations TEXT NOT NULL,
            points TEXT NOT NULL,
            penalties TEXT NOT NULL,
            teams TEXT NOT NULL
          );
        ''');
          }
      );
    }
  }

  //Future<List<ImprovMatchAbstracts>> getMatchList(){}

  Future<ImprovMatch?> getCurrentMatch() async {
    if (currentMatchIndex==-1) return null;
    List<Map<String, dynamic>> maps = await _db!.query('matches',
        columns: ['id', 'date', 'improvisations'],
        where: 'id = ?',
        whereArgs: [currentMatchIndex],
    );
    if (maps.isEmpty) {
      currentMatchIndex = -1;
      return null;
    }

    for (Map<String, dynamic> map in maps){
      developer.log(map.toString(), name: "getCurrentMatch");
      List<int> improIndices = List<int>.from(const JsonDecoder().convert(map["improvisations"]));
      List<Impro> impros = [];
      for (int index in improIndices){
        Impro? impro = await getImpro(index);
        if (impro!=null) {
          impros.add(impro);
        }
      }

    }
    ImprovMatch match = ImprovMatch.fromJson(maps[0]);

  }

  Future<Impro?> getImpro(int index) async {
    List<Map<String, dynamic>> maps = await _db!.query('improvisations',
        columns: ['themeId', 'categoryId', 'improType', 'minPlayers', 'maxPlayers', 'prepTime', 'improTime'],
        where: 'id = ?',
        whereArgs: [index],
    );
    if (maps.isEmpty) return null;

    maps[0]["theme"] = await getTheme(maps[0]["themeId"]);
    maps[0]["category"] = await getCategory(maps[0]["categoryId"]);

    return Impro.fromJson(maps[0]);
  }

  Future<Category?> getCategory(int index) async {
    List<Map<String, dynamic>> maps = await _db!.query('categories',
        columns: ['name', 'description', 'energy'],
        where: 'id = ?',
        whereArgs: [index],
    );
    if (maps.isEmpty) return null;
    return Category.fromJson(maps[0]);
  }

  Future<String> getTheme(int index) async {
    List<Map<String, dynamic>> maps = await _db!.query('themes',
      columns: ['name'],
      where: 'id = ?',
      whereArgs: [index],
    );
    if (maps.isEmpty) return "";
    return maps[0]["name"].toString();
  }

  Future<void> loadAssets(BuildContext context) async{
    await loadIndex();
    await openDB();




  }

}