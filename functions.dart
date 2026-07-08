void main(){
  myFunction(){
    print("Hello Functions");
  }
  
  myFunction();

  functionWithParameters(String name, int age){
    print("Hello $name, you are $age years old.");
  }
  functionWithParameters("John Doe", 25);

  //positional parameters
  funcWithPositionalParameters(String name, [age]){
    print("Hello $name, you are $age years old.");
  }
  funcWithPositionalParameters("Jane Doe");

  //named parameters
  funcWithNamedParameters(String name, {age}){
    print("Hello $name, you are $age years old.");
  }
  funcWithNamedParameters("Bob Smith", age: 35);

  //default parameters
  funcWithDefaultParameters({String name = "Default Name", int age = 0}){
    print("Hello $name, you are $age years old.");
  }
  funcWithDefaultParameters();
}
