/*Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.*/
import 'dart:io';

void main() {
  String? path = stdin.readLineSync()?.trim();

  switch (path) {
    case '/':
      Map<String, String> homePage = {
        'description': 'Home Page',
        'content': 'Welcome to the home page',
      };
      print(homePage['description']);
      print(homePage['content']);

    case '/products':
      Map<String, String> products = {
        'description': 'Products Page',
        'content': 'Here are our products',
      };
      print(products['description']);
      print(products['content']);
    case '/profile':
      Map<String, String> profile = {
        'description': 'Profile Page',
        'content': 'User profile information',
      };
      print(profile['description']);
      print(profile['content']);

    default:
      Map<String, String> notFound = {
        'description': '404 Page',
        'content': 'Page not found',
      };
      print(notFound['description']);
      print(notFound['content']);
  }
}
