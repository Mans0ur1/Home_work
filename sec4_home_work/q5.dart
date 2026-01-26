/*Create a program with the text 'EGP 12.50'. Print only the number 12.50 as a decimal.*/
void main() {
  String textPrice = 'EGP 12.50';
  double price = double.parse(textPrice.replaceAll('EGP ', ''));

  print(price);
}
