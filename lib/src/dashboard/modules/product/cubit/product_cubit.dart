import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:myproject/src/dashboard/modules/product/model/repo/database_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  late DatabaseRepo repo;
  late List<ProductModel> products = [];

  ProductCubit() : super(ProductStateLoading()) {
    init();
  }

  Future<void> init() async {
    emit(ProductStateLoading());
    repo = await DatabaseRepo.instance;
    await _insertInitialProducts();

    products = await (await DatabaseRepo.instance).fetchProducts();

    emit(products.isEmpty ? ProductStateEmpty() : ProductStateLoaded());
  }

  Future<void> _insertInitialProducts() async {
    await repo.insertProduct(ProductModel(
      name: 'product1',
      desc: 'desc',
      favorite: 0,
      cart: 0,
      availableQuantity: 10,
      quantity: 0,
      image: Uint8List(10),
    ));
    await repo.insertProduct(ProductModel(
      name: 'product2',
      desc: 'desc2',
      favorite: 0,
      cart: 0,
      availableQuantity: 20,
      quantity: 0,
      image: Uint8List(10),
    ));
    await repo.insertProduct(ProductModel(
      name: 'product3',
      desc: 'desc3',
      favorite: 0,
      cart: 0,
      availableQuantity: 30,
      quantity: 0,
      image: Uint8List(10),
    ));
  }

  void addItemToFavorite(int id, int value) {
    repo.updateFavorite(value, id);
    init();
    emit(ProductStateLoaded());
  }

  void addItemToCart(int id) {
    repo.updateCart(1, id);
    emit(ProductStateLoaded());
  }
}
