class Pirate {
  String name = '';
  int age = 0;
  String ability = '';
  int numberofgold = 0;

  Pirate ({required String name, required int age , required int numberofgold , required String ability}){
    this.name = name;
    this.age = age;
    this.ability = ability;
    this.numberofgold = numberofgold;
  }

  void haihoi(){
    print("My name is ${this.name}. I'm ${this.age} years old.I've ${this.numberofgold}. I've an ability of ${this.ability}. I'm pirate and I'm member of StrawHat Pirate");
  }
}
class Luffy extends Pirate {
  Luffy(
      {required super.name, required super.age, required super.numberofgold, required super.ability});
@override
  void haihoi() {
    print(
        "I'm the GOAT. I want to be pirate king. I eat so much. I've ability to Stretch my body");
  }
}
class Zoro extends Pirate{
  Zoro({required super.name, required super.age, required super.numberofgold, required super.ability});
@override
  void haihoi() {
    print("I want greatest swordman of all time. I drink so much");
  }
}
class Sanji extends Pirate{
  Sanji({required super.name, required super.age, required super.numberofgold, required super.ability});
@override
  void haihoi(){
    print("I am greatest chef. I love womans and i want find all sea");
  }
}
class Nami extends Pirate{
  Nami({required super.name, required super.age, required super.numberofgold, required super.ability});
@override
  void haihoi(){
  print("I'm thief and navigator");
}
}

void main(){
  final Pirate newbie = Pirate(name: 'Kawhi', age: 32 , ability: "Block you everytime", numberofgold: 80000000 );
  newbie.haihoi();
  final Luffy mondluffy = Luffy(name: "Monkey D.Luffy", age: 19, numberofgold: 3000000000, ability: "Stretch");
  mondluffy.haihoi();
  final Zoro zoro = Zoro(name: "Zoro", age: 21, numberofgold: 1000000000, ability: "use sword");
  zoro.haihoi();
  final Sanji sanji = Sanji(name: "Vinsmoke Sanji", age: 21, numberofgold: 1000000000, ability: "Use leg");
  sanji.haihoi();
  final Nami nami = Nami(name: "Nami", age: 19, numberofgold: 500000000, ability: "Controling weather");
  nami.haihoi();
}

