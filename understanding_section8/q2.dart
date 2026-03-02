/*Create a class Rectangle with private fields _width and _height.
- Public setters width and height:
If > 0 update, else print 'Invalid value for width/height'.
- Public getters width and height.
- Add a read-only computed getter area.
- In main(), demonstrate:
1. Creating a rectangle with valid values and printing width, height, and area.
2. Updating one side to a valid value and showing area changes.
3. Trying to set a negative value (should print 'Invalid value').
- Prove encapsulation: include a commented line rect._width = 0; to show it’s inaccessible.
*/

class Rectangle {
  double? _width;
  double? _height;
  set width(double width) {
    if (width > 0) {
      _width = width;
    } else {
      print('Invalid value for width');
    }
  }

  set height(double height) {
    if (height > 0) {
      _height = height;
    } else {
      print('Invalid value for height');
    }
  }

  double get height {
    if (_height == null) {
      throw Exception('You must set a value first');
    }
    return _height!;
  }

  double get width {
    if (_width == null) {
      throw Exception('You must set a value first');
    }
    return _width!;
  }

  double get area {
          if (_height==null) {
throw Exception('You must set values for width and height first');            }
          return _width! * _height!;
  }
}

void main() {
  Rectangle rectangle1 = Rectangle();
  rectangle1.width = 12;
  rectangle1.height = 10;

  print(rectangle1.height);
  print(rectangle1.width);
  print(rectangle1.area);
  rectangle1.width = -15;
  print(rectangle1.area);

  }