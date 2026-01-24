/*Write a Dart program that works with a nullable list of integers. If the list is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements and check if it is
greater than or equal to 40.*/
void main() {
  List<int>? scores = [10, 20, 30, 40, 50];

  if (scores == null || scores.isEmpty) {
    print('No Scoures');
  } else {
    int sum = scores.first + scores.last;
    print('Sum : ${sum}');
    if (sum > 40) {
      print('sum is greater than or equal to 40');
    } else {
        print('The sum is less than 40');
      };
  }
}
