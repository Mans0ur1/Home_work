/*Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words.*/
import 'dart:io';

void main() {
  print('enter sentence');
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');
  Map<String, int> appearCountWords = {};

  for (String word in words) {
    appearCountWords[word] = (appearCountWords[word] ?? 0) + 1;
  }

  int countOfUniqueWords = 0;

  print('Words that appear only once:');
  appearCountWords.forEach((word, count) {
    if (count == 1) {
      print(word);
      countOfUniqueWords++;
    }
  });

  print('Total unique words: $countOfUniqueWords');
}
