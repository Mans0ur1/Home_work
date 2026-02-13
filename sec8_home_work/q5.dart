/*Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.
*/
class Book {
  String _title = '';
  int _pages = 0;
  set title(String value) {
    if (value.isEmpty) {
      print('Invalid value');
    } else
      _title = value;
  }

  set pages(int value) {
    if (value <= 0) {
      print('Invalid value');
    } else
      _pages = value;
  }

  get title => _title;
  get pages => _pages;

  int get readingTime => _pages * 2;
}

void main() {
  Book book1 = Book();
  book1.title = 'Segregation';
  book1.pages = 180;
  print('name :${book1.title},pages :${book1.pages} ,readingTime : ${book1.readingTime}');
}
