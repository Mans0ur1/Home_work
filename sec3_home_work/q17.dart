/*Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results.
*/
void main() {
  int price = 1000;
  String strPrice = price.toString();
  String formatStrPrice = strPrice.padLeft(strPrice.length + 1, '\$');
  print(formatStrPrice);
  if (formatStrPrice.length > strPrice.length) {
    print("Price was formatted with currency symbol.");
  } else {
    print("No formatting needed.");
  }
}
