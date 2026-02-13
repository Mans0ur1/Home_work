/*Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results.
*/
class Product {
  String _name = '';
  double _price = 0;
  set name(String name) {
    if (name.isEmpty) {
      print('Invalid name');
    } else
      _name = name;
  }

  set price(double price) {
    if (price < 0) {
      print('Invalid price');
    } else
      _price = price;
  }

  get name => _name;
  get price => _price;

  double get discountedPrice => _price * .9;
}

void main(List<String> args) {
  Product product1 = Product();
  product1.name = 'iphone 17';
  product1.price = 40000;
  print('${product1.name} : ${product1.price}');
  print('${product1.name} with discount : ${product1.discountedPrice}');
  product1.name = '';
  product1.price = -50;
}
