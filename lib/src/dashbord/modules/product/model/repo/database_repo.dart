import 'dart:typed_data';

import 'package:myproject/src/dashbord/modules/product/model/entity_model/product_model.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseRepo {
  late Database myObjectDB;
  DataBaseRepo() {
    intiDB();
  }
  Future<dynamic> intiDB() async {
    myObjectDB = await openDatabase(
      (await getDatabasesPath()) + '/productD.db',
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''CREATE TABLE product 
           (id INTEGER PRIMARY KEY AUTOINCREMENT, 
            name TEXT NOT NULL, 
            description TEXT,
            quantity INTEGER,
             image BLOB,
            availableQuantity INTEGER,
            favorite INTEGER,
            cart INTEGER
            )''');
      },
    );
  }

  Future<List<ProductModel>> fetchProducts() async {
    return (await myObjectDB.query('product'))
        .map((e) => ProductModel.formJson(e))
        .toList();
  }

  Future<List<ProductModel>> fetchFavoriteProducts() async {
    return (await myObjectDB
            .query('product', where: 'favorite=?', whereArgs: [1]))
        .map((e) => ProductModel.formJson(e))
        .toList();
  }

  Future<List<ProductModel>> fetchCartProducts() async {
    return (await myObjectDB.query('product', where: 'cart=?', whereArgs: [1]))
        .map((e) => ProductModel.formJson(e))
        .toList();
  }

  Future<void> insertProduct(
    String name,
    String desc,
    int quantity,
    int availableQuantity,
    Uint8List image,
  ) async {
    await myObjectDB.insert('product', {
      'name': name,
      'description': desc,
      'quantity': quantity,
      'availableQuantity': availableQuantity,
      'image': image,
      'favorite': 0,
      'cart': 0,
    });
  }

  void newQuantity(int qnt, int id) {
    myObjectDB.update(
        'product',
        {
          'availableQuantity': qnt,
        },
        where: 'id=?',
        whereArgs: [id]);
  }

  void updateCart(int value, int id) {
    myObjectDB.update(
        'product',
        {
          'cart': value,
        },
        where: 'id=?',
        whereArgs: [id]);
  }

  void updateFavorite(int value, int id) {
    myObjectDB.update(
        'product',
        {
          'favorite': value,
        },
        where: 'id=?',
        whereArgs: [id]);
  }

  void deleteProduct(int id) {
    myObjectDB.delete('product', where: 'id=?', whereArgs: [id]);
  }
}
