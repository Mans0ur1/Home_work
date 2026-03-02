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
- '{[]}' → Valid */

import 'dart:io';

void main() {
  stdout.write('enter String');
  String s = (stdin.readLineSync() != '' ? stdin.readLineSync() : 'x')!;
  print(s);
  print(validString(s));
  print(validString2());
}

String validString(String s) {
  while (true) {
    String newS = s;
    newS = newS.replaceAll('()', '');
    newS = newS.replaceAll('{}', '');
    newS = newS.replaceAll('[]', '');
    if (newS == s) break;
    s = newS;
  }
  return s.isEmpty ? 'Valid' : 'Invalid';
}

String validString2() {
  stdout.write('Enter statement: ');
  String s = stdin.readLineSync() ?? ' ';

  List<String> stack = [];

  Map<String, String> pairs = {')': '(', '}': '{', ']': '['};

  for (int i = 0; i < s.length; i++) {
    String ch = s[i];
    if (pairs.containsValue(ch)) {
      stack.add(ch);
    } else if (pairs.containsKey(ch)) {
      if (stack.isEmpty) {
        return 'Invalid';
      }
      if (stack.last == pairs[ch]) {
        stack.removeLast();
      } else {
        return 'Invalid';
      }
    }
  }
  return stack.isEmpty ? 'Valid' : 'Invalid';
}
