import 'dart:convert';
import 'dart:typed_data';

class ProductModel {
  String? name;
  String? desc;
  int? favorite;
  int? cart;
  int? id;
  int? availableQuantity;
  int? quantity;
  Uint8List? image;

  ProductModel({
    this.name,
    this.desc,
    this.favorite,
    this.cart,
    this.id,
    this.availableQuantity,
    this.quantity,
    this.image,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'],
      desc: map['description'],
      image: base64Decode(map['image']),
      quantity: map['quantity'],
      availableQuantity: map['availableQuantity'],
      cart: map['cart'],
      favorite: map['favorite'],
      id: map['id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': desc,
      'image': base64Encode(image!),
      'quantity': quantity,
      'availableQuantity': availableQuantity,
      'cart': cart,
      'favorite': favorite,
      'id': id,
    };
  }
}
