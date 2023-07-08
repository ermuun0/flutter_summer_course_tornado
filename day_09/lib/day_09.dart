import 'dart:math';
class Sprite {
  Sprite(String name) {
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;
  void move(int x) {
    this.x = x;
  }
  String say(){
    return this.name;
  }
  void changeYby(int y){
    this.y = y;
  }
  void changeSizeBy(int x){
    this.size = x;
  }
  void sayText5Times(String x){
    for (int i=1; i <= 5; i++){
      print(x);
    }
  }
  void dir(int direction){
    this.direction = direction;
  }
  String look(){
    if (0<this.direction && this.direction<90){
      return 'North East';
    }
    else if (90<this.direction && this.direction<180){
      return 'South East';
    }
    else if (180<this.direction && this.direction<270){
      return 'South West';
    }
    else if (270<this.direction && this.direction<360){
      return 'North West';
    }
    else if (this.direction == 0){
      return 'North';
    }
    else if(this.direction == 90){
      return 'East';
    }
    else if(this.direction == 180){
      return 'South';
    }
    else if(this.direction == 270){
      return 'West';
    }
    else  {
      return 'North';
    }
  }
  void changedirrandom(this.direction == random){

  }
}


void main() {
  print('Day-09 - tornado');
  final Button = Sprite('Button');
  final Witch = Sprite('Witch');
  final Ball = Sprite('Ball');
  final Guitar = Sprite('Guitar');
  print(Button.x);
  Button.move(10);
  print(Button.x);
print(Button.say());

  print(Witch);
  print(Witch.say());
  print(Ball.say());
  print(Guitar.say());
  //button
  print(Button.y);
  Button.changeYby(30);
  print(Button.y);
  // Witch
  print(Witch.y);
  Witch.changeYby(-40);
  print(Witch.y);
  Witch.move(-30);
  print(Witch.x);
  //Guitar
  Guitar.move(100);
  print(Guitar.x);
  Guitar.move(-200);
  print(Guitar.x);
  Guitar.changeYby(30);
  print(Guitar.y);
  Guitar.changeYby(-20);
  print(Guitar.y);
  //ball
  Ball.changeYby(200);
  print(Ball.y);
  Ball.changeYby(-300);
  print(Ball.y);
  //changesize
  Button.changeSizeBy(10);
  print(Button.size);
  Witch.changeSizeBy(20);
  print(Witch.size);
  Ball.changeSizeBy(30);
  print(Ball.size);
  Guitar.changeSizeBy(40);
  print(Guitar.size);
  Button.sayText5Times("say");
  Button.dir(360);
  print(Button.direction);
  print(Button.look());
  final random = Random();


}