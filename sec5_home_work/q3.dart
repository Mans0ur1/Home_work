/*Q3. Word Reversal & Vowel Count - Take a word
 from the user. - Print the word reversed, and also
count how many vowels it has.*/
import 'dart:io';
import 'dart:typed_data';

void main() {
  print('enter word');
  String word = stdin.readLineSync()!;
  String reversedWord = '';
  List<String> vowels = ['a', 'A', 'E', 'e', 'O', 'o', 'I', 'i', 'U', 'u'];
  int count = 0;
  for (int i = word.length - 1; i >= 0; i--) {
    reversedWord += word[i];
    if (vowels.contains(word[i])) {
      count += 1;
    }
  }
  print('number of vowels : $count');
  print('reversed word  : $reversedWord');
}
