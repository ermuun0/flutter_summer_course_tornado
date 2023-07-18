class Body {
  int numberOfseats = 0;
  Body({required int numberOfseats}) {
    this.numberOfseats = numberOfseats;
  }
}

class Wheel {
  int numberOfwheels = 0;

  Wheel({required int numberOfwheels}) {
    this.numberOfwheels = numberOfwheels;
  }
}

class Car {
  String name = '';
  Body body = Body(numberOfseats: 0);
  Wheel wheel = Wheel(numberOfwheels: 0);

  Car({required String name, required Body body, required Wheel wheel}) {
    this.name = name;
    this.body = body;
    this.wheel = wheel;
  }
  void showMyInfo() {
    print('My info is ${this.name} ');
  }
}

class Door {
  int numberOfDoors = 0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
  void showmyInfo() {
    print('My info is ${this.numberOfDoors}');
  }
}

class Floor {
  int numberOfFloor = 0;
  Floor({required int numberOfFloor}) {
    this.numberOfFloor = numberOfFloor;
  }
  void showMyinfo() {
    print('My info ${this.numberOfFloor}');
  }
}

class Building {
  String name = '';
  Floor floors = Floor(numberOfFloor: 0);
  Door doors = Door(numberOfDoors: 0);

  Building({required String name, required Floor floors, required Door doors}) {
    this.name = name;
    this.floors = floors;
    this.doors = doors;
  }

  void showmyinfo() {
    print('My Info ${this.name}');
  }
}

void main() {
  final Body lamborghiniBody = Body(numberOfseats: 2);
  final Wheel lamborghiniWheel = Wheel(numberOfwheels: 4);
  final Car lamborghini =
      Car(name: 'Lamborghini', body: lamborghiniBody, wheel: lamborghiniWheel);
  lamborghini.showMyInfo();
  final Door ajnai101Door = Door(numberOfDoors: 2);
  final Floor ajnai101Floor = Floor(numberOfFloor: 3);
  final Building ajnai101 =
      Building(name: 'Ajnai 101', floors: ajnai101Floor, doors: ajnai101Door);
  ajnai101.showmyinfo();
  ajnai101Door.showmyInfo();
  ajnai101Floor.showMyinfo();
}
