
/// ****** serie 04 Functions , lambdas & Null Safety *******

void exercice1() {
  String sayHello(String name) {
    return "Hello, $name !";
  }

  print(sayHello("Hak"));
}

void exercice2() {
  num sum(num a, num b) {
    return a + b;
  }

  num result = sum(5, 3);
  print("La somme est : $result");
}

void exercice3() {
  num sumMany(List<num> numbers) {
    num sum = 0;
    for (num number in numbers) {
      sum += number;
    }
    return sum;
  }

  List<num> numbers = [2, 4, 6, 8];
  num result = sumMany(numbers);
  print("La somme des nombres est : $result");
}

void exercice4() {
  void sumAndPrint(num param1, num param2, {bool shouldPrint = false}) {
    num result = param1 + param2;
    if (shouldPrint) {
      print("$param1 + $param2 = $result");
    }
  }

  sumAndPrint(3, 4, shouldPrint: true);
}

void exercice5() {
  num sumAndFormat(num a, num b, {bool ft = false}) {
    num result = a + b;
    return ft ? result.toInt() : result;
  }

  num result = sumAndFormat(4.5, 2.5, ft: true);
  print("Le résultat formaté est : $result");
}
void exercice6(){
  var strReverse = (String str) => str.split('').reversed.join('');
  String hello = "Hello";
  String reversed = strReverse(hello);
  print(reversed);
}
void exercice7(){
  void printFibonacci(int count) {
    int a = 0;
    int b = 1;

    for (int i = 0; i < count; i++) {
      print(a);
      int temp = a;
      a = b;
      b = temp + b;
    }
  }

  printFibonacci(17);
}