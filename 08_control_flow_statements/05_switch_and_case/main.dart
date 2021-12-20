// Switch and Case
import 'dart:io';

void main() {
  String mark = stdin.readLineSync()!;

  switch (mark) {
    case '1':
      print('Mark 1');

      // if we need to let the code run the case 1 and 2 we can't
      // delet the break statement in dart other languages we can
      //
      // we may add what we want to return from case 1 to case 2
      // in this case will run case 1 in case 2 plus case 2
      // break;

      // second solution is to do a lable
      continue caseTwo;
    caseTwo: // this called lable
    case '2':
      print('Mark 1'); // ex
      print('Mark 2');
      break;
    case '3':
      print('Mark 3');
      break;
    case '4':
      print('Mark 4');
      break;
    case '5':
      print('Mark 5');
      break;
    default:
      print('No Mark');
      break;
  }

  print('Enter your grade A B C, or D');
  String grade = stdin.readLineSync()!;
  grade = grade
      .toUpperCase(); // even if the user input in lowercase it will change to uppercase

  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Very Good');
      break;
    case 'C':
      print('Good');
      break;
    case 'D':
      print('Fair');
      break;
    default:
      print('Invalid value');
  }
}
