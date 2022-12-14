import 'package:get_storage/get_storage.dart';

class Storage {
  String TOKEN = 'token-data';
  final box = GetStorage();

  Future<void> saveToken(String token) async {
    await box.write(TOKEN, token);
  }

  String? getToken() {
    try {
      final token = box.read(TOKEN);
      return token;
    } catch (e) {
      return null;
    }
  }
}
