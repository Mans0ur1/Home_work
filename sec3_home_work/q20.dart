/*Write a Dart program that checks access rules for a ticket gate. If the user is under 18, check if they
have a parent. Use a switch statement on an area variable (general or restricted) to decide what
message to print.*/
void main() {
  int age = 19;
  bool hasParent = true;
  String area = 'restricted'; 
  
    if (age < 18) {
    if (!hasParent) {
      print('Access denied'); 
    }
  }

  switch (area) {
    case 'general':
      print('Access granted ');
    case 'restricted':
      if (age >= 18 || hasParent) {
        print('Access granted ');
      } else {
        print('Access denied ');
      }
    default:
      print('Unknown area.');
  }
}
