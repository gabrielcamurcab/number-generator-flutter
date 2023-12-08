import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");

  String email = "";
  String password = "";
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints:
              BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
          child: SizedBox(
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
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
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: -10),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 151, 71, 200))),
                          hintText: "E-mail",
                          hintStyle: TextStyle(color: Colors.white70),
                          prefixIcon: Icon(Icons.email,
                              color: Color.fromARGB(255, 151, 71, 200))),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                    height: 30,
                    alignment: Alignment.center,
                    child: TextField(
                      controller: passwordController,
                      obscureText: isObscureText,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: -10),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 151, 71, 200))),
                        hintText: "Senha",
                        hintStyle: const TextStyle(color: Colors.white70),
                        prefixIcon: const Icon(Icons.lock,
                            color: Color.fromARGB(255, 151, 71, 200)),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                              isObscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.white),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {
                            if(emailController.text.trim() == "email@email.com" && passwordController.text.trim() == "123"){
                              Navigator.pushReplacement(
                                context, MaterialPageRoute(
                                  builder: (context) => const MainPage()
                                  ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("E-mail/Senha incorretos!"))
                              );
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            backgroundColor: const MaterialStatePropertyAll(
                                Color.fromARGB(255, 151, 71, 200)),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text(
                            "ENTRAR",
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: double.infinity,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
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
        ),
      ),
    );
  }
}
