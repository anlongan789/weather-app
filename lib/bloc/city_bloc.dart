import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather_app/repositories/city_repo.dart';

import '../models/city_model.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  final CityRepository _cityRepository;
  CityBloc(this._cityRepository) : super(CityLoading()) {
    on<LoadCity>(_onCityFetched);
  }

  Future<void> _onCityFetched(LoadCity event, Emitter<CityState> emit) async {
    emit(CityLoading());
    try {
      final List<City> cities = await _cityRepository.getCityByCountry();
      emit(CityLoaded(cities: cities));
    } catch (e) {
      emit(CityError(error: e.toString()));
    }
  }
}
