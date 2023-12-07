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
      ),
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
                    style: GoogleFonts.boogaloo(fontSize: 25),
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
                      foregroundColor: Colors.white
                    ),
                    child: const Text("Resetar"),
                  )
                ],
              ),
              Text(
                "Número gerado: $randomNumber",
                style: GoogleFonts.boogaloo(fontSize: 40),
              ),
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
