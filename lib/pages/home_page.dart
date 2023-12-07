import 'package:flutter/material.dart';
import 'package:trilhaapp/service/random_number_generate_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de número'),
      ),
      body: Center(child: Text(randomNumber.toString())),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
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
