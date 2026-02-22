/*2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.*/

enum Category { pizza, drinks }

class FoodItem {
  String name;
  int price;
  Category category;
  FoodItem(this.name, this.price, this.category);
}

class Menu {
  List<FoodItem> foodItems = [];

  void addFoodItem(String name, int price, Category category) {
    foodItems.add(FoodItem(name, price, category));
  }

  void displayMenu() {
    print("Menu:");
    for (var foodItem in foodItems) {
      print("${foodItem.name}: ${foodItem.price} :${foodItem.category.name}");
    }
  }

  FoodItem? getItemByName(String name) {
    for (var item in foodItems) {
      if (item.name == name) return item;
    }
    return null;
  }
}

class Order {
  Menu menu;
  List<FoodItem> foodItemsOfOrder = [];

  Order(this.menu);

  void addFoodItemToOrder(String name) {
    FoodItem? item = menu.getItemByName(name);
    if (item != null) {
      foodItemsOfOrder.add(item);
    } else {
      print('Not Found');
    }
  }

  void displayOrder() {
    print("Order:");
    for (var foodItem in foodItemsOfOrder) {
      print("${foodItem.name}: ${foodItem.price} : ${foodItem.category.name}");
    }
  }

  int totalPrice() {
    int total = 0;
    for (var foodItem in foodItemsOfOrder) {
      total += foodItem.price;
    }
    return total;
  }

  void displayTotalPrice() {
    print("Total Price: ${totalPrice()}");
  }
}

void main() {
  Menu menu = Menu();
  menu.addFoodItem('Pizz1', 100, Category.pizza);
  menu.addFoodItem('Drink1', 50, Category.drinks);
  menu.displayMenu();

  Order order1 = Order(menu);
  order1.addFoodItemToOrder('Pizz1');
  order1.addFoodItemToOrder('Drink1');

  order1.displayOrder();
  order1.displayTotalPrice();
}