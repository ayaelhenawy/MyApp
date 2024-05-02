<<<<<<< HEAD
import 'dart:developer';

=======
>>>>>>> refs/remotes/origin/master
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/src/dashboard/modules/product/cubit/product_cubit.dart';
import 'package:myproject/src/dashboard/modules/product/model/entity_model/product_model.dart';
import 'package:myproject/src/dashboard/modules/product/cubit/product_cubit.dart';

class ProductItem extends StatelessWidget {
<<<<<<< HEAD
  const ProductItem({super.key, required this.productModel,  required this.controller});

  final ProductModel productModel;
  final ProductCubit controller ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration:  BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width:0.5 ),
              borderRadius: BorderRadius.circular(20),
          ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //product info
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(productModel.name??'product',
                          style:  const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                          ),
            
                          Text(productModel.desc??'description',
                            style:  const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),),
            
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text((productModel.availableQuantity ?? 0).toString(),
                            style:  const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            
                  Divider(thickness: 0.5,),
            
                  // actions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround ,
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
                      const  VerticalDivider(
                         thickness: 0.5,
                         width: 50,
                         endIndent: 0,
                         indent: 0,
                         color: Colors.black,
                       ),
                      InkWell(
                        child: productModel.cart==1 ?
                        const Icon(CupertinoIcons.cart , color: Colors.blue) :
                        const Icon(CupertinoIcons.cart , color: Colors.blue)
                        ,
                        onTap: () {
                          if(productModel.cart == 1){
                            controller.addItemToCart(productModel.id  ?? 0);}
                          else
                          {
                            controller.addItemToCart(productModel.id  ?? 0);
                          }
                        },
                      ),
            
=======
  final ProductModel productModel;
  final ProductCubit controller;

  const ProductItem(
      {super.key, required this.productModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    // return Card(
    //   child: ListTile(
    //     title: Text(productModel.name ?? 'product'),
    //     subtitle: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Text('Description: ${productModel.desc}'),
    //         Text('Quantity: ${productModel.quantity} \$'),
    //         Text('Available Quantity: ${productModel.availableQuantity}'),
    //       ],
    //     ),
    //   ),
    // );
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //product info
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productModel.name ?? 'product',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      Text(
                        productModel.desc ?? 'description',
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Text(
                        (productModel.availableQuantity ?? 0).toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueGrey,
                        ),
                      ),
>>>>>>> refs/remotes/origin/master
                    ],
                  ),
                ],
              ),
<<<<<<< HEAD
            ),
          ),

=======
              const Divider(thickness: 0.5),
              // actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: productModel.favorite == 1
                        ? const Icon(CupertinoIcons.heart_fill,
                            color: Colors.red)
                        : const Icon(CupertinoIcons.heart, color: Colors.red),
                    onTap: () {
                      if (productModel.favorite == 1) {
                        controller.addItemToFavorite(productModel.id ?? 0, 0);
                      } else {
                        controller.addItemToFavorite(productModel.id ?? 0, 1);
                      }
                    },
                  ),
                  const VerticalDivider(
                    thickness: 0.5,
                    width: 50,
                    endIndent: 0,
                    indent: 0,
                    color: Colors.black,
                  ),
                  InkWell(
                    child: productModel.cart == 1
                        ? const Icon(CupertinoIcons.cart, color: Colors.blue)
                        : const Icon(CupertinoIcons.cart, color: Colors.blue),
                    onTap: () {
                      if (productModel.cart == 1) {
                        controller.addItemToCart(productModel.id ?? 0);
                      } else {
                        controller.addItemToCart(productModel.id ?? 0);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
>>>>>>> refs/remotes/origin/master
    );
  }
}
