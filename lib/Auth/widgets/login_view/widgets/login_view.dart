import 'package:flutter/material.dart';
import 'package:flutter_fruit_market/Auth/widgets/login_view/widgets/login_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginViewBody(),
    );
  }
}
