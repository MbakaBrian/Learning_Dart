void main(){
//Variable declaration
  String name = "Hello World";
  print(name);

  var age = 25;
  print(age);

  int age2 = 30;
  print(age2);

  var myName;
  myName = "John Doe";
  print(myName);

  //lists
  var myList = [1, 2, 3, 4, 5];
  print(myList);
  print(myList[1]);

 // adding an element to the list
  myList.add(6);
  print(myList);
 
 // updating an element by index
  myList[2] = 10;
  print(myList);

 // removing an element by index
  myList.removeAt(0);
  print(myList);

  // removing an element by value
  myList.remove(6);
  print(myList);
  // inserting an element at a specific index
  myList.insert(1, 15);
  print(myList);

  //insert many elements at a specific index
  myList.insertAll(2, [20, 25, 30]);
  print(myList);

  //Maps
    var myMap = {
        'name': 'John Doe',
        'age': 25,
        'city': 'New York'
    };
    print(myMap);
    print(myMap['name']);

    //print the values only in the maps
    print(myMap.values);

    //print the keys only in the maps
    print(myMap.keys);

    //count the number of elements in the maps
    print(myMap.length);
    
    //add to the maps
    myMap['country'] = "Kenya";
    print(myMap);

    //remove from the maps
    myMap.remove('age');

    //add many things to the maps
    myMap.addAll({'occupation': 'Engineer', 'education': 'Bachelor'});
    print(myMap);

    // clear the maps
    myMap.clear();
    print(myMap);
}