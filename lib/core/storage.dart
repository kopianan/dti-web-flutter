import 'dart:convert';

import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:get_storage/get_storage.dart';

class Storage {
  String TOKEN = 'token-data';
  String DOCUMENTS = 'document-list-data';
  final box = GetStorage();

  Future<void> saveToken(String token) async {
    await box.write(TOKEN, token);
  }

  Future<void> deleteStorage() async {
    await box.erase();
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
   final result  = box.read(DOCUMENTS);
   List list = json.decode(result);
    if (list != null) {
      final lists = list.map((e) => DocumentDataModel.fromJson(e)).toList();
      return lists;
    }

    return [];
  }
}
