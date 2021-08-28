import 'dart:convert';

import 'package:http/http.dart' as http;

class LoginProvider {
  String _url = 'mochilapp.choyerostech.com';

  Future<List<dynamic>> emailUserLogIn() async {
    final response = await http.post(Uri.https(_url, "api/signIn"), body: {
      "email": "emiliano@gmail.com",
      "password": "contraseña",
    });

    final dataDecode = json.decode(response.body);

    print(dataDecode);

    return [];
  }
}
