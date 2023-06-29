import 'dart:convert';
import 'package:crypto/crypto.dart';

class User {
  String firstname;
  String lastname;
  String email;
  String _password = '';
  String _hash = '';

  User(this.firstname, this.lastname, this.email, String password);

  set password(String value) {
    _password = value;
    _hash = _generateHash(value);
  }

  void sayHello() {
    print("Hello, I'm $firstname $lastname !");
  }

  bool authenticate(String password) {
    String passwordHash = _generateHash(password);
    return passwordHash == _hash;
  }

  @override
  String toString() {
    String passwordDisplay = _password.isNotEmpty ? "*****" : "null";
    return "User: {firstname: $firstname, lastname: $lastname, email: $email, password: $passwordDisplay}";
  }

  String _generateHash(String value) {
    var bytes = utf8.encode(value);
    var hash = sha256.convert(bytes);
    return hash.toString();
  }
}
