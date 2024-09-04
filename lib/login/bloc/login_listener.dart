import 'package:flutter/material.dart';

import '../login.dart';

void loginListener(BuildContext context, LoginState state) {
  if (state.status.isError) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Error logging in! Please try again.'),
        backgroundColor: Colors.red,
      ),
    );
  }
}
