import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:synchronized/synchronized.dart';

const dbName = "spv.db";
const dbVersion = 1;

class DatabaseHelper {
  static Database _dbBackingField;
  final Lock _lock = Lock();

  Future<Database> get db async {
    if (_dbBackingField == null) {
      await _lock.synchronized(() async {
        if (_dbBackingField == null) {
          _dbBackingField = await _initDatabase();
        }
      });
    }
    return _dbBackingField;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDir = await getApplicationDocumentsDirectory();
    String pathToDb = join(documentsDir.path, dbName);
    return await openDatabase(
      pathToDb,
      version: dbVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
      onConfigure: _onConfigure,
      onDowngrade: onDatabaseDowngradeDelete,
      singleInstance: true,
      readOnly: false,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute("""
    BEGIN TRANSACTION;
    
    /*News Table*/
    CREATE TABLE IF NOT EXISTS `News` (
      `id`	TEXT NOT NULL UNIQUE,
      `date`	TEXT NOT NULL,
      `title`	TEXT NOT NULL,
      `accessibilityText`	TEXT NOT NULL,
      `description`	TEXT NOT NULL,
      `imageLinks`	INTEGER NOT NULL,
      `contentLinks`	INTEGER NOT NULL,
      PRIMARY KEY(`id`),
      FOREIGN KEY(`imageLinks`) REFERENCES `Link`(`id`) ON DELETE CASCADE
    );
    
    /*Link Table*/
    CREATE TABLE IF NOT EXISTS `Link` (
      `id`	TEXT NOT NULL UNIQUE,
      `rel`	TEXT NOT NULL,
      `url`	TEXT NOT NULL
    );
    
    COMMIT;
    """);
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    print("Database upgrade from $oldVersion to $newVersion");
  }

  void _onConfigure(Database db) async {
    await db.execute("""
    PRAGMA foreign_keys = ON
    """);
  }
}
