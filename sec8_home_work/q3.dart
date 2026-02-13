/*Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/
class Grade {
  int _score = 0;
  set score(int score) {
    if (score >= 0 && score <= 100)
      _score = score;
    else
      print('Invalid Score');
  }

  get score => _score;
  bool get isPass => _score >= 50;
}

void main() {
  Grade grade1 = Grade();
  grade1.score = 10;
  print('Score: ${grade1.score}, Pass: ${grade1.isPass}'); // Score: 10, Pass: false
  grade1.isPass;
  grade1.score = 59;
  print('Score: ${grade1.score}, Pass: ${grade1.isPass}'); // Score: 10, Pass: false
}
