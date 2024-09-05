import 'package:auth_client/auth_client.dart';
import 'package:auth_client/src/constants/constants.dart';

class AuthLocalClient implements AuthClient {
  @override
  Future<User> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));
    if (email == kLoginEmail && password == kLoginPassword) {
      return Future.value(User(email: email));
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
