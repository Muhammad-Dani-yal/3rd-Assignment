import 'dart:io';

void main() {
  List<Map<String, String>> users = [
    {"email": "user1", "password": "num1"},
    {"email": "user2", "password": "num2"},
    {"email": "user3", "password": "num3"},
  ];
  bool isloggedin = false;
  while (!isloggedin) {
    stdout.writeln('Enter your email');
    String? eml = stdin.readLineSync();
    stdout.writeln('Enter your password');
    String? pass = stdin.readLineSync();
    for (var user in users) {
      if (user['email'] == eml && user['password'] == pass) {
        print('login successful');
        isloggedin = true;
        break;
      }
    }
    if (!isloggedin) {
      print('invalid password or email. Try again');
    }
  }
}
