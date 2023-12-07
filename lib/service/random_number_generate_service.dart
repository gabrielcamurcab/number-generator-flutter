import 'dart:math';

class RandomNumberGenerateService {
  static int randomNumberGenerate(int maxNumber) {
    Random numeroAletorio = Random();
    return numeroAletorio.nextInt(maxNumber);
  }
}
