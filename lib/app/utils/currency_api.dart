import 'package:http/http.dart' as http;
import 'dart:convert';

class CurrencyApi {
  // Url da API
  final requestURL =
      "https://api.hgbrasil.com/finance?format=json-cors&key=d9e0864c";

  // Função pra pegar os dados da API
  Future<Map> getCurrency() async {
    //
    final response = await http.get(requestURL);
    final responseJSON = jsonDecode(response.body);

    //print(responseJSON);
    return responseJSON;
  }
}
