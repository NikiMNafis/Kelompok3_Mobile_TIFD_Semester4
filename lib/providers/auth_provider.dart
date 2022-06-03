import 'package:flutter/material.dart';
import 'package:project_akhir_mobile_smtr4/models/user_models.dart';
import 'package:project_akhir_mobile_smtr4/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String name,
    required String username,
    required String email,
    required String pasword,
    required String confirmpassword,
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: pasword,
        confirmpassword: confirmpassword,
      );

      _user = user;
      return true;
    } catch (e) {
      return false;
    }
  }
}
