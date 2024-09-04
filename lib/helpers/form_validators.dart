import 'package:string_validator/string_validator.dart';

String? emailValidator(String? email) {
  if (email?.isEmpty ?? true) {
    return 'Email is required';
  } else if (!email!.isEmail) {
    return 'Invalid email';
  }
  return null;
}

String? passwordValidator(String? password) {
  if (password?.isEmpty ?? true) {
    return 'Password is required';
  } else if (password!.length < 6) {
    return 'Password must be at least 6 characters';
  }
  return null;
}
