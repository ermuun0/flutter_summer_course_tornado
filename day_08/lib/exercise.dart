void main(){
  print('day_08');
  print(add(3,4));
  print(average(3, 4));
  print(ad(1.1, 1.2, 1.3));
  str('sun', 'moon');
}
int add(int x, int y){
  return x+y;
}
double average(int x, int y){
  return((x+y)/2);
}
double ad(double a,double b,double c){
  return a*b*c;
}
void str(String a, String b){
  print('$a$b');
}