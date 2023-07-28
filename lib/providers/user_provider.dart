import 'package:flutter_instagram_clone/models/user.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethods _authMethods = AuthMethods();

  UserProvider() {
    refreshUser();
  }

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
