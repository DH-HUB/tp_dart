/// ****** serie 03 Collection *******

void exercice1(){
  List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Vénus', 'Neptune', 'Uranus', 'Jupiter'];
  planets.sort((a, b) => b.compareTo(a)); // Tri alpha desc
  print(planets);
}

void exercice2() {
  List<String> planets = [
    'Terre',
    'Mars',
    'Mercure',
    'Saturne',
    'Vénus',
    'Neptune',
    'Uranus',
    'Jupiter'
  ];
  for (String planet in planets) {
    print(planet.toUpperCase());
  }
}
void exercice3(){
  List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Vénus', 'Neptune', 'Uranus', 'Jupiter'];
  int index = 0;
  while (index < planets.length) {
    print(planets[index][0]);
    index++;
  }
}
void exercice4(){
  List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Vénus', 'Neptune', 'Uranus', 'Jupiter'];
  int index = 0;
  do {
    print('${index + 1} - ${planets[index]}');
    index++;
  } while (index < planets.length);
}

void exercice5() {
  List<String> planets = [
    'Terre',
    'Mars',
    'Mercure',
    'Saturne',
    'Vénus',
    'Neptune',
    'Uranus',
    'Jupiter'
  ];
  int index = 0;
  while (index < planets.length) {
    String lastChar = planets[index][planets[index].length - 1].toLowerCase();
    if (lastChar == 'a' || lastChar == 'e' || lastChar == 'i' ||
        lastChar == 'o' || lastChar == 'u') {
      print(planets[index]);
    }
    index++;
  }
}
void exercice6(){
  List<String> planets = ['Terre', 'Mars', 'Mercure', 'Saturne', 'Vénus', 'Neptune', 'Uranus', 'Jupiter'];
  planets.add('Pluton');
  print(planets);
}

void exercice7() {
  List<Planet> planets = [
  Planet('Mercure', 91.69),
  Planet('Saturne', 1275),
  Planet('Neptune', 4351.40),
  Planet('Jupiter', 628.73),
  Planet('Mars', 78.34),
  Planet('Venus', 41.40),
  Planet('Uranus', 2723.95),
  ];

  planets.sort((a, b) => a.distanceFromEarth.compareTo(b.distanceFromEarth)); // Tri ascendant

  for (Planet planet in planets) {
  print('${planet.name} - ${planet.distanceFromEarth} Mkm');
  }
}

class Planet {
  String name;
  double distanceFromEarth;

  Planet(this.name, this.distanceFromEarth);
}


void exercice8() {
  Map<String, String> apollo = {
    '07_1969': 'Apollo 11',
    '11_1969': 'Apollo 12',
    '02_1971': 'Apollo 14',
    '07_1971': 'Apollo 15',
    '04_1972': 'Apollo 16',
    '12_1972': 'Apollo 17',
  };

  print(apollo);
  print(apollo['07_1971']);
  print(apollo.keys);
  print(apollo.values);
}
void exercice9(){
  Map<String, String> apollo = {
    '07_1969': 'Apollo 11',
    '11_1969': 'Apollo 12',
    '02_1971': 'Apollo 14',
    '07_1971': 'Apollo 15',
    '04_1972': 'Apollo 16',
    '12_1972': 'Apollo 17',
  };

  apollo['07_1969'] = 'Neil Armstrong + Buzz Aldrin';
  print(apollo['07_1969']);
}
void exercice10() {

  SolarSystemElement sun = SolarSystemElement('sun', Kind.star);
  SolarSystemElement earth = SolarSystemElement('earth', Kind.planet);
  SolarSystemElement moon = SolarSystemElement('moon', Kind.satellite);
  SolarSystemElement pluto = SolarSystemElement('pluto', Kind.satellite);

  List<SolarSystemElement> elements = [sun, earth, moon, pluto];
  for (SolarSystemElement element in elements) {
  print('${element.name} (${element.kind})');
  }
}
enum Kind {
  planet,
  star,
  satellite,
  asteroid,
  comet,
}
class SolarSystemElement {
  String name;
  Kind kind;

  SolarSystemElement(this.name, this.kind);
}