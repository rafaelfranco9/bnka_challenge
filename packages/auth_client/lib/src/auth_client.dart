import 'package:auth_client/src/models/user.dart';

abstract class AuthClient {
  Future<User> login(String email, String password);
}
