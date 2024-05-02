import 'package:flutter/material.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(productModel.name??'product'),
        Text(productModel.desc??'description'),

      ],
    );
  }
}
