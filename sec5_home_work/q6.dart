/*Q6. Number Guessing (3 Tries) - Generate a random number between 1 and 20. - Let the user
guess up to 3 times. If they fail, reveal the correct number.*/
import 'dart:io';
import 'dart:math';

void main() {
  int randomNumber = Random().nextInt(10) + 1;

  for (int i = 0; i < 3; i++) {
    print('enter guess ${i + 1} : ');
    int guessNumber = int.parse(stdin.readLineSync()!);
    if (guessNumber != randomNumber) {
      print('not equal  ');
      if (i == 2)
        print('you are fail , the correct number is equal :$randomNumber');
    } else {
      print('your guess it true');
      break;
    }
  }
}
