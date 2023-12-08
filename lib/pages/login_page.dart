import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              child: const Icon(Icons.account_circle_rounded, size: 150, color: Colors.blue),
              ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              height: 30,
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Text("Informe seu login:"),
                  SizedBox(width: 20),
                  Text("Login"),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              height: 30,
              alignment: Alignment.center,
              child: const Row(
                children: [
                  Text("Informe sua senha:"),
                  SizedBox(width: 20),
                  Text("********"),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              color: Colors.green,
              height: 30,
              alignment: Alignment.center,
              child: const Text("Login"),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              height: 30,
              alignment: Alignment.center,
              child: const Text("Cadastro"),
            )
          ]),
        ),
      ),
    );
  }
}
