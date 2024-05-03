import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myproject/src/dashbord/new_product/cubit/new_product_cubit.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewProductCubit(),
      child: BlocBuilder<NewProductCubit, NewProductState>(
        builder: (context, state) {
          final NewProductCubit cubit = context.read<NewProductCubit>();
          return Scaffold(
            appBar: AppBar(
              title: const Text('Add new product'),
            ),
            body: Column(
              children: [
                const Text('Name'),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  controller: cubit.nameController,
                ),
                const Text('Description'),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  controller: cubit.desController,
                ),
                const Text('Quantity'),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  keyboardType: TextInputType.name,
                  controller: cubit.qnController,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: cubit.pickProductImage,
                      icon: const Icon(Icons.photo), // Use appropriate icon
                    ),
                    IconButton(
                      onPressed: cubit.takeProductImage,
                      icon: const Icon(Icons.camera), // Use appropriate icon
                    ),
                  ],
                ),
                if (cubit.image != null)
                  ClipRRect(
                    child: Image.file(
                      File(cubit.image!.path),
                      height: 100,
                      width: 100,
                    ),
                  ),
                Spacer(),
                TextButton(
                  onPressed: () => cubit.addProduct(context),
                  child: const Text("Add product"),
                ),
              ],
            ),
          );
        },
      ),
    );
    Navigator.pop(context);
  }
}
