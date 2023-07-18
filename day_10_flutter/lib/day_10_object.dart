class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void saymylocation() {
    print('My location is $x and $y');
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }

  int x = 0;
  int y = 0;

  void saymylocation() {
    print('My location is $x and $y');
  }
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = 'name';
  String type = 'type';
  void makeNoice() {
    print('Animal roaring');
  }
}

class Hero {
  Hero({required int level, required String type}){
    this.level = 0;
    this.type = type;
  }
  int level = 0;
  String type = 'type';
  void doFight() {
    print("I'm fighting");
  }
  void showlevel(){
    print("I'm at level 10");
  }
}

void main() {
  final Sprite catSprite = Sprite(10, 40);
  print(catSprite);
  catSprite.saymylocation();
  final NamedSprite namedCatSprite = NamedSprite(x: 40, y: 50);
  namedCatSprite.saymylocation();
  final Animal cat = Animal(name: 'BAd', type: 'good');
  cat.makeNoice();
  final Hero tracer = Hero(level: 10 , type: 'Mdku');
  tracer.doFight();
  tracer.showlevel();

}
