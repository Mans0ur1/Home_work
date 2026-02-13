/*Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid
*/

import 'dart:io';

void main(List<String> args) {
  String s = stdin.readLineSync()!;
  while (true) {
    String newS = s;
    newS=newS.replaceAll('()', '');
    newS=newS.replaceAll('{}', '');
    newS=newS.replaceAll('[]', '');
    if (newS == s) 
      break;
    
    s = newS;
  }
  s.isEmpty ? print('valid') : print('Invalid');
}
