import 'package:flutter/material.dart';
import 'package:trilhaapp/pages/cadastral_data.dart';
import 'package:trilhaapp/pages/page1.dart';
import 'package:trilhaapp/pages/page2.dart';
import 'package:trilhaapp/pages/page3.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pagePosition = 0;
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main page")),
      drawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Menu principal",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const Divider(),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Dados cadastrais"),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastralDataPage(
                          text: "Dados Cadastrais",
                          data: ["Nome", "Endereço"],
                        ),
                      ),
                    );
                  },
                ),
                const Expanded(child: Column()),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Configurações"),
                  ),
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                InkWell(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    child: const Text("Termos de uso e privacidade"),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: PageView(
        controller: controller,
        onPageChanged: (value) {
          setState(() {
            pagePosition = value;
          });
        },
        children: const [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            controller.jumpToPage(value);
          });
        },
        currentIndex: pagePosition,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Atualizações", icon: Icon(Icons.update)),
          BottomNavigationBarItem(label: "Ajuda", icon: Icon(Icons.help)),
        ],
      ),
    );
  }
}
