void main() {
  print('Hello dart');
  print(4 + 5);
  print(12 + 5);
  print(13 + 5);
  add();
  f(2, 3);
  int result = f1(1, 2);
  print(result);
  add1(6, 7);
  e(1, 4, 5);
  e(4, 5, 6);
  e(7, 8, 4);
  find(9, 5);
  helloPersonAndPet('andy', 'pegasus');
  a(3, 5);
  a(6, 7);
  a(7, 8);
  a(10, 60);
  a(0, 2);
  r(5);
  zereg(5, 2);
  fi(6);
  FahrenheitToCelcius(32);
  FahrenheitToCelcius(33);
  FahrenheitToCelcius(34);
  FahrenheitToCelcius(35);
  FahrenheitToCelcius(36);
  CelciusToFahrenheit(0);
  CelciusToFahrenheit(1);
  CelciusToFahrenheit(2);
  CelciusToFahrenheit(3);
  CelciusToFahrenheit(4);
}

//exercise1
void add1(int x, int y) {
  print(x + y);
}

int f1(int x, int y) {
  return x * x + y * y;
}

void f(int x, int y) {
  print(x * x + y * y);
}

void add() {
  print(4 + 5);
}

//exercise 2
void e(int x, int y, int z) {
  print((x + y + z) / 3);
}

//exercise3
void find(int x, int y) {
  if (x > y) {
    print(x);
  } else {
    print(y);
  }
}

//exercise4
void helloPersonAndPet(String person, String pet) {
  print('hello $person  and your furry friend $pet!');
}

//exercise5
void a(int x, int y) {
  print(x * y);
}
//exercise 6
void r(int x){
  print(2*x*3.14);
}
//exercise7
void zereg(int x, int y){
  print(x^y);
}
//exercise8
void fi(int x){
  print(x*x);
}
void FahrenheitToCelcius(int x){
  print((x-32)*5/9);
}
void CelciusToFahrenheit(int x){
  print((x*5/9)+32);
}