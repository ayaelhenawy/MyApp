part of 'favorite_cubit.dart';

@immutable
sealed class favoriteState {}

final class favoriteStateLoading extends favoriteState {}

final class favoriteStateLoaded extends favoriteState {}

final class favoriteStateEmpty extends favoriteState {}
