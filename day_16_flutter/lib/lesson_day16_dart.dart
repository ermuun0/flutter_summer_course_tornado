void main() {
  if (25 > 16) {
    print('25 is bigger than 16');
  } else {
    print('25 is lesser than 16');
  }

  25 > 16 ? print('25 is bigger than 16') : print('25 is lesser than 16');

  var a = 25 > 16 ? 15 : 100;
  print(a);
}