/*Create a program with the list of
 names ['Ali', 'Mona', 'Ali', 'Omar', 'Mona']. 
 Count how many times each name appears. 
 Print only the names that appear more than once*/

void main() {
  List names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  Map<String, int> countEachNames = {};
  for (var name in names) {
    if (countEachNames.containsKey(name)) {
      countEachNames[name] = countEachNames[name]! + 1;
    } else {
      countEachNames[name] = 1;
    }
  }
  countEachNames.forEach((name, count) {
    if (count > 1) {
      print(name);
    }
  });
}
