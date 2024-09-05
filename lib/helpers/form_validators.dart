import 'package:string_validator/string_validator.dart';

String? emailValidator(String? email) {
  if (email?.isEmpty ?? true) {
    return 'El email es requerido';
  } else if (!email!.isEmail) {
    return 'El email no es válido';
  }
  return null;
}

String? passwordValidator(String? password) {
  if (password?.isEmpty ?? true) {
    return 'La contraseña es requerida';
  } else if (password!.length < 6) {
    return 'La contraseña debe tener al menos 6 caracteres';
  }
  return null;
}
