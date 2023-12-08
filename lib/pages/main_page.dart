import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/cadastral_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main page")),
      drawer:  Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Menu principal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Divider(),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Dados cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => const CadastralDataPage(
                          text: "Dados Cadastrais",
                          data: ["Nome", "Endereço"])));
                  }),
                const Expanded(child: Column()),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Configurações")),
                  onTap: () {}),
                const SizedBox(height: 10),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Termos de uso e privacidade")),
                  onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}