/*Create a program with the scores [10, 0, 20, 30]. Ignore the zeros, add the other numbers together,
and print the total.*/
void main() {
  List<int> Scores = [10, 0, 20, 30];
  //new list that : Ignore the zeros;

  List<int> NoZeroScores = Scores.where((score) => score != 0).toList();
  print(NoZeroScores);
  //to calculate the sum of list element

  int total = NoZeroScores.reduce((a, b) => a + b);

  print(total);
}
