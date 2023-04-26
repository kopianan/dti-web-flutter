import 'dart:convert';
import 'dart:developer';

import 'package:dti_web/domain/auth/user_data.dart';
import 'package:dti_web/domain/core/country_nationality.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:get_storage/get_storage.dart';

class Storage {
  String TOKEN = 'token-data';
  String DOCUMENTS = 'document-list-data';
  String USER = 'user-data';
  String BROWSER = 'browser';
  String NATIONALITY = 'nationality';
  final box = GetStorage();

  Future fillBrowser() async {
    await box.write(BROWSER, "true");
  }

  bool getBrowser() {
    final data = box.read(BROWSER);
    if (data == null) {
      return false;
    } else {
      return true;
    }
  }

  removeBrowser() async {
    await box.remove(BROWSER);
  }

  Future<void> saveToken(String token) async {
    log('token Saved');
    await box.write(TOKEN, token);
  }

  Future<void> deleteStorage() async {
    await box.erase();
  }

  Future<void> saveUser(UserData userData) async {
    await box.write(USER, json.encode(userData.toJson()));
  }

  UserData? getLocalUserData() {
    final stringJson = box.read(USER);
    if (stringJson == null) {
      return null;
    }
    return UserData.fromJson(json.decode(stringJson));
  }

  String? getToken() {
    try {
      final token = box.read(TOKEN);
      return token;
    } catch (e) {
      return null;
    }
  }

  //DOCUMENTS

  void saveListDocument(List<DocumentDataModel> docs) async {
    final jsonData = jsonEncode(docs);

    await box.write(DOCUMENTS, jsonData);
  }

  List<DocumentDataModel> loadDocument() {
    final result = box.read(DOCUMENTS);
    List list = json.decode(result);
    if (list != null) {
      final lists = list.map((e) => DocumentDataModel.fromJson(e)).toList();
      return lists;
    }

    return [];
  }

  List<CountryNationality>? getNationality() {
    try {
      var _stringData = box.read(NATIONALITY);
      if (_stringData == null) return null;

      List object = json.decode(_stringData);
      final list = object.map((e) => CountryNationality.fromJson(e)).toList();
      list.sort((a, b) => a.name.compareTo(b.name));
      return list;
    } on Exception catch (e) {
      return null;
    }
  }

  Future<void> setNationality(dynamic nationality) async {
    try {
      await box.write(NATIONALITY, nationality);
    } on Exception catch (e) {}
  }
}
