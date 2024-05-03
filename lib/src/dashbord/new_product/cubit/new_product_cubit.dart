import 'dart:js';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:meta/meta.dart';
import 'package:myproject/src/dashbord/modules/product/cubit/product_cubit.dart';
import 'package:myproject/src/dashbord/modules/product/model/repo/database_repo.dart';

part 'new_product_state.dart';

class NewProductCubit extends Cubit<NewProductState> {
  NewProductCubit() : super(NewProductInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController desController = TextEditingController();
  TextEditingController qnController = TextEditingController();
  XFile? image;

  Future<void> pickProductImage() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    image = await picker.pickImage(source: ImageSource.gallery);
    emit(NewProductInitial());
  }

  Future<void> takeProductImage() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    image = await picker.pickImage(source: ImageSource.camera);
    emit(NewProductInitial());
  }
  /////////////////////////////////////////                                 هتعملى دي

  Future<void> addProduct(context) async {
    DataBaseRepo db = DataBaseRepo();
    db.intiDB();
    db.insertProduct(
      nameController.text,
      desController.text,
      0,
      0,
      (await image!.readAsBytes()) as Uint8List,
    );
    ProductCubit.instance.init();
    Navigator.pop(context);
  }
}
