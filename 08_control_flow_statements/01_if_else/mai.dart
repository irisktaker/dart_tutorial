import 'dart:io';

// if and else

void main() {
  print('Enter a number form 1 - 3 :');
  int guessNum = int.parse(stdin.readLineSync()!);

  if (guessNum == 1) {
    print('try again number is low');
  } else if (guessNum == 2) {
    print('Congratualtion you guessed the number');
  } else if (guessNum == 3) {
    print('try again number is heigh');
  } else {
    print('try a valid number for 1 - 3');
  }
}
