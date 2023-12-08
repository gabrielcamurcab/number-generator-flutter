import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SizedBox(
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            margin: const EdgeInsets.only(top: 100),
            child: Row(
              children: [
                const Expanded(child: Column()),
                Expanded(
                  flex: 5,
                  child: Image.network(
                    "https://images.crunchbase.com/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco,dpr_1/r0rx7o4jm6jy2uvzt7xk",
                  ),
                ),
                const Expanded(child: Column()),
              ],
            ),
          ),
          const Text(
            "Já tem cadastro?",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          const Text(
            "Faça seu login e make the change_",
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            height: 30,
            alignment: Alignment.center,
            child: const Row(
              children: [
                Text("Informe seu login:",
                    style: TextStyle(color: Colors.white)),
                SizedBox(width: 20),
                Text("Login", style: TextStyle(color: Colors.white)),
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
                Text("Informe sua senha:",
                    style: TextStyle(color: Colors.white)),
                SizedBox(width: 20),
                Text("********", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            alignment: Alignment.center,
            child: SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 151, 71, 200)),
                  foregroundColor: const MaterialStatePropertyAll(Colors.white),
                ),
                child: const Text(
                  "ENTRAR",
                  style: TextStyle(fontSize: 16),
                  )
                ),
            ),
          ),
          Expanded(child: Container()),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            height: 30,
            alignment: Alignment.center,
            child: const Text(
              "Esqueci minha senha",
              style: TextStyle(
                  color: Color.fromARGB(255, 234, 77, 95),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            height: 30,
            alignment: Alignment.center,
            child: const Text(
              "Criar conta",
              style: TextStyle(
                  color: Color.fromARGB(255, 45, 165, 221),
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 25),
        ]),
      ),
    );
  }
}
