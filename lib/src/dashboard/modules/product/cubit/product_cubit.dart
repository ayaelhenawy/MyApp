import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:myproject/src/dashboard/modules/product/model/repo/database_repo.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductStateLoading())

  {

  init();
}

List<ProductModel> products = [];

DataBaseRepo repo = DataBaseRepo();

void init() async {
  emit(ProductStateLoading());
  await repo.intiDB();

  await repo.insertProduct('product1', 'desc',0,10, Uint8List(10));
  await repo.insertProduct('product2', 'desc2',0,20, Uint8List(10));
  await repo.insertProduct('product3', 'des3',0,30, Uint8List(10));
  products = await repo.fetchProducts();

  if (products.isEmpty) {
    emit(ProductStateEmpty());
  }
  else {
    emit(ProductStateLoaded());
  }
}
  void addItemToFavorite(int id,int value)
  {
    repo.updateFavorite(value, id);
    init();
    emit(ProductStateLoaded());

  }
  void addItemToCart(int id)
  {
    repo.updateCart(1, id);
    emit(ProductStateLoaded());

  }


}