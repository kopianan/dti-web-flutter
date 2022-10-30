import 'dart:convert';

import 'package:dti_web/domain/core/city.dart';
import 'package:dti_web/domain/core/distict.dart';
import 'package:dti_web/domain/core/province.dart';
import 'package:flutter/services.dart';

import '../domain/core/country_nationality.dart';

class DataUtils {
  static Future<List<Province>> getProvince() async {
    final String response =
        await rootBundle.loadString('assets/files/locations.json');
    Map<String, dynamic> data = await json.decode(response)['province'];

    try {
      List<Province> listData = [];
      for (var element in data.entries) {
        var code = int.parse(element.key);
        var newProvince = Province(code, element.value);
        listData.add(newProvince);
      }

      return listData;
      // return list;
    } on Exception catch (e) {
      // return null;
      throw Exception("Something wrong");
    }
  }

  static Future<List<City>> getCity() async {
    final String response =
        await rootBundle.loadString('assets/files/locations.json');
    Map<String, dynamic> data = await json.decode(response)['city'];

    try {
      List<City> listData = [];
      for (var element in data.entries) {
        var code = element.key.split('-');
        listData.add(
            City(int.parse(code.first), int.parse(code.last), element.value));
      }
      return listData;
      // return list;
    } on Exception catch (e) {
      // return null;
      throw Exception("Something wrong");
    }
  }

  static Future<List<District>> getDistrict() async {
    final String response =
        await rootBundle.loadString('assets/files/locations.json');
    Map<String, dynamic> data = await json.decode(response)['district'];

    try {
      //Proccess the district
      List<District> listData = [];
      for (var element in data.entries) {
        var code = element.key.split('-');
        listData.add(District(int.parse(code[0]), int.parse(code[1]),
            int.parse(code[2]), element.value));
      }
      // return list;
      return listData;
    } on Exception catch (e) {
      // return null;
      throw Exception("Something wrong");
    }
  }
}
