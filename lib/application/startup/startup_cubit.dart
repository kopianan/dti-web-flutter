import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:dti_web/utils/data_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'startup_state.dart';
part 'startup_cubit.freezed.dart';

@Injectable()
class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(StartupState.initial());

  Future<void> setupStartupData() async {
    emit(state.copyWith(isLoading: true));
    final provinces = await DataUtils.getProvince();
    final cities = await DataUtils.getCity();
    final districts = await DataUtils.getDistrict();
    emit(state.copyWith(
      isLoading: false,
      isSuccess: true,
      cities: cities,
      districts: districts,
      provinces: provinces,
    ));
  }

  void setUpInitialProvince(String name) async {
    //update list of
    await setupStartupData();
    final province =
        state.provinces!.firstWhere((element) => element.name == name);

    emit(
      state.copyWith(selectedProvince: province),
    );

    final city = state.cities!
        .firstWhere((element) => element.proviceCode == province.proviceCode);
    chooseProvince(province);
    chooseCity(city);
  }

  void chooseProvince(Province province) async {
    //update list of
    final listCityByProvince = state.cities!
        .where((element) => element.proviceCode == province.proviceCode)
        .toList();
    emit(state.copyWith(
      selectedProvince: province,
      citiesByProvince: listCityByProvince,
      selectedCity: listCityByProvince.first,
    ));
  }

  void chooseCity(City city) async {
    //update list of
    final listDistrictByCity = state.districts!
        .where((element) => element.cityCode == city.cityCode)
        .toList();
    emit(state.copyWith(
        selectedCity: city,
        districtsByCity: listDistrictByCity,
        selectedDistrict: listDistrictByCity.first));
  }

  void chooseDistrict(District district) async {
    //update list of
    emit(state.copyWith(selectedDistrict: district));
  }
}
