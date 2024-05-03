import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:myproject/src/dashbord/modules/product/cubit/product_cubit.dart';
import 'package:myproject/src/dashbord/modules/product/model/entity_model/product_model.dart';
import 'package:myproject/src/dashbord/modules/product/model/repo/database_repo.dart';

part 'favorite_state.dart';

class favoriteCubit extends Cubit<favoriteState> {
  static favoriteCubit instance = favoriteCubit();
  favoriteCubit() : super(favoriteStateLoading()) {
    init();
  }

  List<ProductModel> products = [];

  DataBaseRepo repo = DataBaseRepo();

  void init() async {
    emit(favoriteStateLoading());
    await repo.intiDB();

    await repo.insertProduct('product1', 'desc', 0, 10, Uint8List(10));
    await repo.insertProduct('product2', 'desc2', 0, 20, Uint8List(10));
    await repo.insertProduct('product3', 'des3', 0, 30, Uint8List(10));
    products = await repo.fetchFavoriteProducts();

    if (products.isEmpty) {
      emit(favoriteStateEmpty());
    } else {
      emit(favoriteStateLoaded());
    }
  }

  void addItemToFavorite(int id, int value) {
    repo.updateFavorite(value, id);
    init();
    ProductCubit.instance.init();
    emit(favoriteStateLoaded());
  }

  void addItemToCart(int id) {
    repo.updateCart(1, id);
    emit(favoriteStateLoaded());
  }
}
