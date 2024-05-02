import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';

class DatabaseRepo {
  DatabaseRepo._init();
  static DatabaseRepo? _singletonObject;
  static late Database _database;
  static Future<DatabaseRepo> get instance async {
    if (_singletonObject == null) {
      await _initDatabase();
      _singletonObject = DatabaseRepo._init();
    }
    return _singletonObject!;
  }

  static Future<void> _initDatabase() async {
    // Get the path to the database file
    final String databasePath = await getDatabasesPath();
    final String path = join(databasePath, 'expenses.db');

    // Open the database
    _database = await openDatabase(path, version: 1, onCreate: _createTable);
  }

  static Future<void> _createTable(Database db, int version) async {
    // Create the products table if it doesn't exist
    await db.execute('''
      CREATE TABLE product (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        description TEXT,
        image BLOB,
        quantity INTEGER,
        availableQuantity INTEGER,
        favorite INTEGER,
        cart INTEGER
      )
    ''');
  }

  /// Fetches products from the database.
  Future<List<ProductModel>> fetchProducts() async {
    final List<Map<String, dynamic>> records = await _database.query('product');
    return records.map((record) => ProductModel.fromMap(record)).toList();
  }

  /// Inserts a product into the database.
  Future<void> insertProduct(ProductModel product) async {
    await _database.insert('product', product.toMap());
  }

  /// Updates the quantity of a product in the database.
  Future<void> updateQuantity(int quantity, int id) async {
    await _database.update(
      'product',
      {'availableQuantity': quantity},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Updates the cart status of a product in the database.
  Future<void> updateCart(int value, int id) async {
    await _database.update(
      'product',
      {'cart': value},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Updates the favorite status of a product in the database.
  Future<void> updateFavorite(int value, int id) async {
    await _database.update(
      'product',
      {'favorite': value},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  /// Deletes a product from the database.
  Future<void> deleteProduct(int id) async {
    await _database.delete(
      'product',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
