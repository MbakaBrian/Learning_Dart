void main() {
  Person person1 = Person("Alice", 30);
  Person person2 = Person("Bob", 25);

  person1.displayInfo();
  person2.displayInfo();
}

class Person{
  //properties
  String? name;
  int? age;
  
  //constructor
  Person( String name, int age){
    this.name = name;
    this.age = age;
  }

  //method
  void displayInfo(){
    print("Name: $name, Age: $age");
  }
}