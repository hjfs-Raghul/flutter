import 'package:flutter/widgets.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token;
  DateTime _expiryDate;
  String _userId;

  Future<void> SignUpWithMail(String mail , String password) async{
    const signUpUrl = "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAz9Nlne-KV6NLwfI5JLgV14PZp2Hkeh2c";

    final response = await http.post(signUpUrl,body: json.encode({
      'email':mail,
      'password':password,
      'returnSecureToken':true,
    }));

    print("Response --->" + json.decode(response.body).toString());


  }
}