import "dart:io";
void main (){
  print("Please enter your name: ");
  var name = stdin.readLineSync();
  print("Hello $name, welcome to Dart programming!");

  //ask user for age then convert to an integer
  print("Please enter your age: ");
  var age = stdin.readLineSync();
  int ageInt = int.parse(age!);
  print("You are $ageInt years old.");

  // int conversion
  print("Please enter a number: ");
  var num1 = stdin.readLineSync();
  var num2 = int.parse(num1 ?? "0") + 10 ;
  print("$num1 + 10 = $num2");
}