/*Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'.
*/
void main() {
  Map<String, String> countryCode = {
    'EG': 'Egypt',
    'UK': 'United Kingdom',
    'FR': 'France',
  };
  countryCode.entries.map((e) {
    print(e);
  });
  print(countryCode['EG']);
  countryCode['QA'] = 'Qatar';
  print(countryCode.length);
  if (!countryCode.containsKey('JO')) {
    print('Jordan missing');
  }
}
