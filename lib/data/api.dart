import 'package:http/http.dart' as http;

class Api {
  String hostName = 'pixabay.com';

  ///
  Future<http.Response> pixabayApi(String pathName, Map<String, dynamic> queryParameters) async =>
      http.get(Uri.https(hostName, pathName, queryParameters));
}
