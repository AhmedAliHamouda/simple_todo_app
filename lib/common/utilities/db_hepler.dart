import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;
import 'package:sqflite/sql.dart';

class DBHelper {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(dbPath, 'todos.db'),
      onCreate: (db, version) {
        return db.execute(
            'CREATE TABLE todos_data(id INT PRIMARY KEY,todoName TEXT,todoInfo TEXT,todoTime TEXT,todoDone INT)');
      },
      version: 1,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await database();
    await db.rawQuery('SELECT COUNT(*) FROM $table');
    return db.query(table);
  }

  static Future<int> update({required String table, required Map<String, dynamic> values, required int todoId}) async {
    final db = await database();
    return await db.update(
      table,
      values,
      where: "id=?",
      whereArgs: [todoId],
    );
  }

  static Future<int> insert({required String table, required Map<String, dynamic> data}) async {
    final db = await database();
    return await db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
