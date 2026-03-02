/*Create a class Person with private fields _firstName and _lastName.
- Add setters for both fields that reject empty strings (print 'Invalid name' if empty).
- Add getters for both fields.
- Add a computed getter fullName that returns 'firstName lastName'.
- In main(), demonstrate:
1. Creating a person with valid names and printing fullName.
2. Trying to set an empty string for firstName or lastName (should print 'Invalid name').
*/

class Person {
  String _firstName = '', _lastName = '';
  set firstName(String firstName) {
    if (firstName.isEmpty) {
      print('Invalid name');
    } else {
      _firstName = firstName;
    }
  }

  set lastName(String lastName) {
    if (lastName.isEmpty) {
      print('Invalid name');
    } else {
      _lastName = lastName;
    }
  }

  get firstName => _firstName;
  get lastName => _lastName;
  get fullName => _firstName + ' ' + _lastName;
}

void main() {
  Person person1 = Person();
  person1.lastName = 'Ali';
  person1.firstName = 'Ahmed';

  print(person1.fullName);
  person1.firstName = '';
  person1.lastName = '';
}
