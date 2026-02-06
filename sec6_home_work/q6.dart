/*Q6. Sentence Analyzer - Ask the user to input a sentence. - Print how many words it contains. -
Then print the shortest word and the longest word from the sentence.*/

import 'dart:io';

void main() {
  print('Enter a sentence:');
  String sentence = stdin.readLineSync()!;

  List<String> words = sentence.split(' ');

  int wordCount = words.length;

  String shortestWord = words[0];
  String longestWord = words[0];

  for (String word in words) {
    if (word.length < shortestWord.length) {
      shortestWord = word;
    }
    if (word.length > longestWord.length) {
      longestWord = word;
    }
  }

  print('Number of words: $wordCount');
  print('Shortest word: $shortestWord');
  print('Longest word: $longestWord');
}
