/*Q1
Create a class Temperature with a private field _celsius.
- Provide a setter celsius that checks if the input is in the range -100..100.
If valid → update _celsius, else print 'Invalid temperature'.
- Provide a getter celsius.
- Add a read-only computed getter fahrenheit that converts from _celsius.
- In main(), demonstrate:
1. Setting a valid value and printing both celsius and fahrenheit.
2. Trying to set an invalid value (should print 'Invalid temperature').
- Prove encapsulation: include a commented line temp._celsius = 999; showing direct access is not
allowed.
*/
class Temperature {
  int _celsius=0;
  set celsius(int c) {
    if (c >= -100 && c <= 100) {
      _celsius = c;
    } else {
      print('Invalid temperature');
    }
  }

  get celsius => _celsius;
  get fahrenheit => (_celsius * (9 / 5)) + 32;
}

void main() {
  Temperature todayTemperature = Temperature();
  todayTemperature.celsius = 16;
  
  print(todayTemperature.celsius);
  print(todayTemperature.fahrenheit);
  todayTemperature.celsius= 999;

}
