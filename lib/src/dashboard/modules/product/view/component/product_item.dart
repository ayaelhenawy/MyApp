import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/src/dashboard/modules/product/cubit/product_cubit.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productModel,  required this.controller});

  final ProductModel productModel;
  final ProductCubit controller ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration:  BoxDecoration(
            color: Colors.grey,
            border: Border.all(color: Colors.black, width:2 ),
            borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productModel.name??'product'),
                  Text(productModel.desc??'description'),

                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    child: productModel.favorite==1 ?
                    const Icon(CupertinoIcons.heart_fill , color: Colors.red) :
                    const Icon(CupertinoIcons.heart , color: Colors.red)
                    ,
                    onTap: () {
                      if(productModel.favorite == 1){
                        controller.addItemToFavorite(productModel.id  ?? 0,0);}
                      else
                        {
                          controller.addItemToFavorite(productModel.id  ?? 0,1);
                        }
                        },
                  ),
                  Text((productModel.availableQuantity ?? 0).toString()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
