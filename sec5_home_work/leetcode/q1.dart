/*A phrase is a palindrome if, after converting all
 uppercase letters into lowercase letters and removing all 
 non-alphanumeric characters, it reads the same forward and 
 backward. Alphanumeric characters include letters and 
 numbers.*/

class Solution {
  bool isPalindrome(String phrase) {
    phrase = phrase.toLowerCase();
    String newPhrase = '';

    for (int i = 0; i < phrase.length; i++) {
      if (RegExp(r'^[a-z0-9]$').hasMatch(phrase[i])) {
        newPhrase += phrase[i];
      }
    }

    for (int j = 0; j < newPhrase.length ~/ 2; j++) {
      if (newPhrase[j] != newPhrase[newPhrase.length - j - 1]) {
        return false;
      }
    }

    return true;
  }
}
