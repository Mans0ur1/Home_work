/*Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price.*/
void main() {
  double price = 99.9;
  bool isStudent = false;
  bool isHasCoupon = false;
  double finalPrice = price;
  if (isStudent) {
    finalPrice =finalPrice- (price* .10); //10% discount
    print('Student discount applied 10 %');
    if (isHasCoupon) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
      print('Coupon discount applied 10 %');
      if (price >= 100) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
        print('High price discount applied 10%');
      }
    } else {
      if (price >= 100) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
        print('High price discount applied 10%');
      }
    }
  }
  //Not Student
  else {
    if (isHasCoupon) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
      print('Coupon discount applied 10 %');
      if (price >= 100) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
        print('High price discount applied 10%');
      }
    } else {
      if (price >= 100) {
      finalPrice =finalPrice- (price* 0.10); //10% discount
        print('High price discount applied 10%');
      }
    }
  }
  print('final price : $finalPrice');
}
