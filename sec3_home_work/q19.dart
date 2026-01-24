/*Question 19
Write a Dart program that converts a list of names to a set of unique values. Create a map with
counts of occurrences. Compare lengths and print a message if a specific name appears more than
once.
*/
void main() {
  List<String> names = ['ahmed', 'ahmed', 'ali'];
  Set<String> uniqueNames = names.toSet();
  Map<String, int> countsOfOccurrences = {};
  for (var name in names) {
    if (countsOfOccurrences.containsKey(name)) {
      countsOfOccurrences[name] = countsOfOccurrences[name]! + 1;
    } else {
      countsOfOccurrences[name] = 1;
    }
  }
  if (uniqueNames.length < names.length) {
    print('There are duplicates in the list');
  } else {
    print('All name are unique');
  }
  String specificName = 'ahmed';
  if (countsOfOccurrences[specificName]! > 1) {
    print('$specificName appears more than one');
  } else {
    print('$specificName unique name');
  }
}
