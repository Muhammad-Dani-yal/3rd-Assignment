import 'dart:io';

void main() {
  stdout.writeln('Enter a number');
  String str = stdin.readLineSync()!;
  int num = int.tryParse(str) ?? 0;
  if (num <= 1) {
    print('$num Is Not A Prime Number');
  } else {
    bool isPrime = true;

    for (var i = 2; i <= num / 2; i++) {
      if (num % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print('$num Is A Prime Number');
    } else {
      print('$num Is Not A Prime Number');
    }
  }
}
