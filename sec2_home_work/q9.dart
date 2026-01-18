/*Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double*/

void main() {
  List<Map<String, dynamic>> students = [
    {'name': 'ali', 'grade': 10},
    {'name': 'ahmed', 'grade': 9},
  ];
  print(students[1]['grade']);
  int totalGrades = students[0]['grade'] + students[1]['grade'];
  double averageGrades = totalGrades / students.length;
  print(averageGrades);
}
