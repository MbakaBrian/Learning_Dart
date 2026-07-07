void main(){
  //this is learning Logic in Dart
  var name = "John Doe";
  var age = 25;
  if (name == "John Doe" && age == 25) {
    print("Hello John Doe, you are 25 years old.");
  } else if (name == "Jane Doe" || age == 30) {
    print("Hello Jane Doe or you are 30 years old.");
  } else {
    print("Hello Stranger.");
  }
}