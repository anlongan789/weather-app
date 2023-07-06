// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'city_bloc.dart';

abstract class CityState extends Equatable {
  const CityState();

  @override
  List<Object> get props => [];
}

class CityLoading extends CityState {
  @override
  List<Object> get props => [];
}

class CityLoaded extends CityState {
  final List<City> cities;

  const CityLoaded({
    required this.cities,
  });

  @override
  List<Object> get props => [cities];
}

class CityError extends CityState {
  final String error;

  const CityError({
    required this.error,
  });

  @override
  List<Object> get props => [error];
}
