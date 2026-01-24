/*Create a Dart program that safely reads a phone number from a map. If the phone number is null,
print a default message. Then update the phone number and print its length.*/
void main() {
  Map<String, dynamic> phoneNumber = {'name': 'ahmed', 'phone': null};
  if (phoneNumber['phone'] == null) {
    print('the phone number is not available');
  }
  phoneNumber['phone'] = '01123456';
  String phone = phoneNumber['phone'];
  print(' phone length : ${phone.length}');
}
