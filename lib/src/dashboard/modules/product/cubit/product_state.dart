part of 'product_cubit.dart';

sealed class ProductState {}

final class ProductStateLoading extends ProductState {}

final class ProductStateLoaded extends ProductState {}

final class ProductStateEmpty extends ProductState {}
