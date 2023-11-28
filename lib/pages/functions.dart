import 'lists.dart';

void addTobag(
    {required String brand,
    required String model,
    required String imageUrl,
    required double size,
    required int price}) {
  basket.add([brand, model, imageUrl, size, price]);
}

void addTobag2(
    {required String brand,
    required String model,
    required String imageUrl,
    required String hoodiesize,
    required int price}) {
  basket.add([brand, model, imageUrl, hoodiesize, price]);
}

double calculateTotalAmount(List<List<dynamic>> basket) {
  double sum = 0.0;
  basket.forEach((item) {
    // Huomaa, että item[4] on indeksi, joka vastaa hinnan sijaintia listassa
    sum += item[4] as double;
  });
  return sum;
}
