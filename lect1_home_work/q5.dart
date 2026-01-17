/* What is the difference between var and dynamic in Dart?
   Provide an example of each.
*/
void main() {
  // var is a keyword that takes the data type based on the initial value
  // It cannot change to a different data type after initialization
  var name = 'Ahmed';
  // name = 10; // Error: a String variable cannot be assigned an int

  // dynamic is a data type that can take any value
  // It can change its data type after initialization
  dynamic age = 22;
  age = 'Ali'; // This is allowed
}
