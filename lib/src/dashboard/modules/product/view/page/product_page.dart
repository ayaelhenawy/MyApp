import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/src/dashboard/modules/product/cubit/product_cubit.dart';
import 'package:myproject/src/dashboard/modules/product/view/component/product_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          final ProductCubit controller = context.read<ProductCubit>();
          return Scaffold(
            body: state is ProductStateLoading
                ? const CircularProgressIndicator()
                : state is ProductStateEmpty
                    ? const Icon(CupertinoIcons.delete)
                    : ListView.builder(
                        itemBuilder: (_, int index) => ProductItem(
                          productModel: controller.products[index],
                          controller: controller,
                        ),
                        itemCount: controller.products.length,
                      ),
          );
        },
      ),
    );
  }
}
