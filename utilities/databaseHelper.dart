import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import '../models/userModels.dart';

class DatabaseHelper {
  DatabaseHelper() {
    database();
  }

  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'users.db'),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE user(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT,phoneNumber String)');
      },
      version: 1,
    );
  }

  Future<void> insertUser(Users user) async {
    final db = await database();
    await db.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  Future<List<Users>> getUser() async {
    final db = await database();

    final List<Map<String, dynamic>> maps = await db.query('users');

    return List.generate(maps.length, (i) {
      return Users(
        id: maps[i]['id'],
        username: maps[i]['username'],
        password: maps[i]['password'],
        phoneNumber: maps[i]['phoneNumber'],
      );
    });
  }
}
