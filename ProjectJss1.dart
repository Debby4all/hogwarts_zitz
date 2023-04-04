import 'dart:io';
import 'dart:core';

final STUDENTS = [];

void addStudent() {
  print(
      "Hello, this is the JSS1 students database, please enter student's name.");
  final String name = stdin.readLineSync()!;

  print("Enter student's age.");
  final int age = int.parse(stdin.readLineSync()!);

  print("Enter student's date of birth.");
  final String dateOfBirth = stdin.readLineSync()!;

  print("Enter height in centimeters.");
  final int height = int.parse(stdin.readLineSync()!);

  print("Enter student's state of origin.");
  final String stateOfOrigin = stdin.readLineSync()!;

  var Student = {
    "name": name,
    "age": age,
    "dateOfBirth": dateOfBirth,
    "height": height,
    "stateOfOrigin": stateOfOrigin,
  };
  STUDENTS.add(Student);


}

void printStudents() {
  print(STUDENTS);
}


void main() {
addStudent();
  
  while(true) {
    print("Enter 1 to continue or enter 0 to end.");
  final int userInput = int.parse(stdin.readLineSync()!);
    if(userInput == 1){
    addStudent();
    }else if(userInput == 0){
      print(STUDENTS);
      break;
    }else{
      print('Invalid input');
    }
  }

}



































// import 'dart:io';
// import 'dart:core';

// void main() {

// print(
//     "Hello, this is the JSS1 students database, please enter student's name.");
//     String name = stdin.readLineSync()!;

// print(
//     "Enter student's age.");
//     int age = int.parse(stdin.readLineSync()!);


// print(
//     "Enter student's date of birth.");
//     String dateOfBirth = stdin.readLineSync()!;


// print("Enter height in centimeters.");
//     int height = int.parse(stdin.readLineSync()!);


// print(
//     "Enter student's state of origin.");
//     String stateOfOrigin = stdin.readLineSync()!;

 

//  var Students ={
//       "name" : name,
//       "age" : age,
//       "dateOfBirth" : dateOfBirth,
//       "height" : height,
//       "stateOfOrigin" : stateOfOrigin,
//  };
  
// Students.forEach((key, value) => print("key: $key and value: $value"));


// //test(){

// //print('Enter 1 to continue or enter 0 to end');
// //int menuInput = int.parse(stdin.readLineSync()!);
// //if(menuInput == 1){
//   //addStudent();
// //}else{
//  // viewStudent();
// //}



// //}




// }

    

