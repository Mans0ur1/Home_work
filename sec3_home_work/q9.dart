/*Write a Dart program that removes duplicate items from a list using a Set. Compare the unique
count with the original list length and print a message if duplicates were removed*/
void main() {
  List numbers = [1, 2, 4, 22, 22, 55, 45, 55];
  Set uniqueNumbers = numbers.toSet();
  bool equalLength = numbers.length == uniqueNumbers.length;

  if (!equalLength) {
    print('duplicates was removed');
  }
}
