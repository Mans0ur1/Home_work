/*Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one*/

void main() {
  String country = 'asyout';
  int year = 2026;
  double weight = 50;
  bool likesCoding = true;

  print(
    ' country: $country,year :$year,weight :$weight,like coding :$likesCoding',
  );
  weight = 55;
  print(weight);
}
