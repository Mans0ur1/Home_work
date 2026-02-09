/*Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both.*/
class Course {
  String title;
  double duration;
  Course(this.title, [this.duration = 3]);
}

void main() {
  Course course1 = Course('flutter', 5);
  Course course2 = Course('web');
  
  print('${course1.title} : ${course1.duration} months');
  print('${course2.title} : ${course2.duration} months');
}
