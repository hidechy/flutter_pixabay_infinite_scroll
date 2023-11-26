import 'hit.dart';

class PixabayApiResponse {
  PixabayApiResponse({required this.total, required this.totalHits, required this.hits});

  int total;
  int totalHits;
  List<Hit> hits;
}
