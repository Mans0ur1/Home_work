abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle({required double width, required double height})
    : _width = width >= 0 ? width : 0,
      _height = height >= 0 ? height : 0 {
    if (width < 0 || height < 0) {
      print("Invalid dimensions for Rectangle. Using default 0.");
    }
  }

  @override
  double area() => _width * _height;
}

class Circle extends Shape {
  double _radius;

  Circle({required double radius}) : _radius = radius >= 0 ? radius : 0 {
    if (radius < 0) print("Invalid radius for Circle. Using default 0.");
  }

  @override
  double area() => 3.1416 * _radius * _radius;
}

class Triangle extends Shape {
  double _base;
  double _height;

  Triangle({required double base, required double height})
    : _base = base >= 0 ? base : 0,
      _height = height >= 0 ? height : 0 {
    if (base < 0 || height < 0) {
      print("Invalid dimensions for Triangle. Using default 0.");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}

void main() {
  List<Shape> shapes = [
    Rectangle(width: 10, height: 5),
    Circle(radius: 7),
    Triangle(base: 6, height: 8),
    Rectangle(width: -3, height: 4),
  ];

  double totalArea = 0;

  for (var shape in shapes) {
    totalArea += shape.area();
  }
  double remaining = totalArea;
  double cost = 0;

  if (remaining > 50) {
    cost += 50 * 1.50;
    remaining -= 50;
  } else {
    cost += remaining * 1.50;
    remaining = 0;
  }

  if (remaining > 100) {
    cost += 100 * 1.25;
    remaining -= 100;
  } else {
    cost += remaining * 1.25;
    remaining = 0;
  }

  if (remaining > 0) {
    cost += remaining * 1.00;
  }

  print("Total paintable area: ${totalArea.toStringAsFixed(2)} units");
  print("Total cost: \$${cost.toStringAsFixed(2)}");
}
