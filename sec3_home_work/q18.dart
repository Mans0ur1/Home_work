/*Write a Dart program that reads environment variables from a map. If a value is null, replace it with
a default. Print values in uppercase, and display 'Prod ready' or 'Non-prod' depending on
conditions*/
void main() {
  Map<String, String?> env = {
    'APP_NAME': 'myapp',
    'VERSION': null,
    'ENV': 'dev', 
    'DATABASE_URL': null,
  };

  Map<String, String> defaults = {
    'APP_NAME': 'default_app',
    'VERSION': '1.0.0',
    'ENV': 'dev',
    'DATABASE_URL': 'localhost:5432',
  };

  env.forEach((key, value) {
    String finalValue = (value ?? defaults[key] ?? '').toUpperCase();
    print('$key: $finalValue');
  });

  String envValue = env['ENV'] ?? defaults['ENV'] ?? '';
  if (envValue.toLowerCase() == 'prod') {
    print('Prod ready');
  } else {
    print('Non-prod');
  }
}
