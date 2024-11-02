import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class storage_controller extends GetxController{
  final GetStorage _storage = GetStorage();
  final String tokenKey = '';
  saveToken(String token) async {
    await _storage.write(tokenKey, token);
  }
  String? getToken() {
    return _storage.read(tokenKey);
  }
  deleteToken() async {
    await _storage.remove(tokenKey);
  }
}