//Print .........................................................
void main(){
  print("Flutter");
}//Flutter

//Print the integer value...............
void main(){
  int a=10;
  print(a);
  
  double d=12.5;
  print(d);
  
  String s="Flutter";
  print(s);
}
/*
10
12.5
Flutter
/*

//Summation.....................
void main(){
  int a=12;
  int b=10;
  
  print(a+b);
}
/*
22
*/

//Function.................
void main(){
  int a=12;
  int b=10;
  
  add(a,b);
}

add(a,b){
  print(a+b);//22
}

void main(){
  var a=12,b=10;

  print(add(a,b));
}

add(a,b){
  return a+b;
}//22

//Calculator..........................
 void main()
{
   var a=12,b=10;
   print("Sum $a");
   print("Sum ${a+b}");
  
  print("Summation:${sum(a,b)}");
  print("Subtraction:${sub(a,b)}");
  print("Multiplication:${mul(a,b)}");
  print("Division:${div(a,b)}");
  print("Remainder:${rem(a,b)}");
}
sum(a,b){
  return a+b;
}
sub(a,b){
  return a-b;
}
mul(a,b){
  return a*b;
}
div(a,b){
  return a/b;
}
rem(a,b){
  return a%b;
}
/*
Sum 12
Sum 22
Summation:22
Subtraction:2
Multiplication:120
Division:1.2
Remainder:2
*/

//For loop..................

void main()
{
    for(int i=1;i<=5;i++){
      print(i);
  }
}
/*
1
2
3
4
5
*/

void main(){
  for(int i=1;i<=10;i++){
    print("7 X ${i} = ${7*i}");
  }
}

/*
7 X 1 = 7
7 X 2 = 14
7 X 3 = 21
7 X 4 = 28
7 X 5 = 35
7 X 6 = 42
7 X 7 = 49
7 X 8 = 56
7 X 9 = 63
7 X 10 = 70
*/

void main(){
  for(int i=1;i<=5;i++){
    print("\n Number :$i");
    print("\n");
    for(int j=1;j<=10;j++){
      print("${i} X ${i*j} = ${i*j}");
    }
  }
}

/*
Number :1


1 X 1 = 1
1 X 2 = 2
1 X 3 = 3
1 X 4 = 4
1 X 5 = 5
1 X 6 = 6
1 X 7 = 7
1 X 8 = 8
1 X 9 = 9
1 X 10 = 10

 Number :2


2 X 2 = 2
2 X 4 = 4
2 X 6 = 6
2 X 8 = 8
2 X 10 = 10
2 X 12 = 12
2 X 14 = 14
2 X 16 = 16
2 X 18 = 18
2 X 20 = 20

 Number :3


3 X 3 = 3
3 X 6 = 6
3 X 9 = 9
3 X 12 = 12
3 X 15 = 15
3 X 18 = 18
3 X 21 = 21
3 X 24 = 24
3 X 27 = 27
3 X 30 = 30

 Number :4


4 X 4 = 4
4 X 8 = 8
4 X 12 = 12
4 X 16 = 16
4 X 20 = 20
4 X 24 = 24
4 X 28 = 28
4 X 32 = 32
4 X 36 = 36
4 X 40 = 40

 Number :5


5 X 5 = 5
5 X 10 = 10
5 X 15 = 15
5 X 20 = 20
5 X 25 = 25
5 X 30 = 30
5 X 35 = 35
5 X 40 = 40
5 X 45 = 45
5 X 50 = 50

*/
