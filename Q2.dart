import 'dart:io';

void main() {
  var numbers = [];
  for (var i = 0; i < 10; i++) {
    stdout.writeln('Enter Your List Of Numbers, 1 ${10 - i} Remaining');
    String str = stdin.readLineSync()!;
    int num1 = int.tryParse(str) ?? 0;
    numbers.add(num1);
  }
  var evennumbers = [];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) {
      evennumbers.add(numbers[i]);
    }
  }
  print("Even Numbers In Your List");
  print(evennumbers);
}
