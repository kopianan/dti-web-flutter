part of 'startup_cubit.dart';

@freezed
class StartupState with _$StartupState {
  factory StartupState({
    List<Province>? provinces,
    List<City>? cities,
    List<District>? districts,
    List<City>? citiesByProvince,
    List<District>? districtsByCity,
    @Default(Province(11, "DKI Jakarta")) Province selectedProvince,
    City? selectedCity,
    District? selectedDistrict,
    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    @Default(false) bool isError,
  }) = _StartupState;
  factory StartupState.initial() => StartupState(
        cities: [],
        districts: [],
        provinces: [],
        citiesByProvince: null,
        districtsByCity: null,
        isError: false,
        isLoading: false,
        isSuccess: false,
      );
}
