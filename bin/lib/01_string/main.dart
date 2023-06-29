/// ****** serie 01 String*******

void exercice1(){
  print("Hello, World !");
}

void exercice2(){
  String message = "Hello, World !";
  print(message);
}
void exercice3(){
  const String hello = "Hello";
  const String world = "World";
  print("$hello, $world !");
}
void exercice4(){
  const String hello = "Hello";
  const String world = "World";
  print(hello.toUpperCase() + ", " + world.toUpperCase() + " !");
}
void exercice5(){
  String message = "Hello, World !";
  print(message.substring(0, 5));
}
void exercice6(){
  const String message = "Hello, World !";
  print(message.length);
}
void exercice7(){
  const String welcome = "Hello, World !";
  String transformed = welcome.replaceAll("o", "0").replaceAll("l", "1").replaceAll("e", "3").replaceAll(" ", "");
  print(transformed);
}
void exercice8() {
  const String welcome = "Hello World";
  List<String> words = welcome.split(" ");
  print(words);
}
void exercice9(){
  String pwd = ""; // Remplacez par une valeur pour tester
  String message = pwd.isEmpty ? "Mot de passe manquant" : "Mot de passe fourni";
  print(message);
}
void exercice10(){
  String email = "john@doe.com"; // Remplacez par la valeur de votre choix
  bool isValidEmail = email.contains("@") && email.contains(".");
  String message = isValidEmail ? "E-mail valide" : "E-mail non valide";
  print(message);
}

