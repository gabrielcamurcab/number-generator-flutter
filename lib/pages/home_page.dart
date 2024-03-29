import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/service/random_number_generate_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;
  var clicksCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Gerador de número',
            // style: GoogleFonts.boogaloo()
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.info),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Versão do app: v1.0.0')));
              },
            ),
          ]),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Foi clicado $clicksCount vezes",
                    style: GoogleFonts.roboto(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        randomNumber = 0;
                        clicksCount = 0;
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    child: const Text("Resetar"),
                  )
                ],
              ),
              Text(
                "Número gerado: $randomNumber",
                style: GoogleFonts.roboto(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                        child: const Text("Login"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blueGrey[100],
                            foregroundColor: Colors.blue),
                        child: const Text("Cadastro"),
                      ),
                    ),
                  ),
                ],
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clicksCount = clicksCount + 1;
            randomNumber =
                RandomNumberGenerateService.randomNumberGenerate(10000);
          });
        },
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}
