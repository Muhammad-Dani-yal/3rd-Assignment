import "dart:io";

void main() {
  stdout.writeln('Enter Your Name Here !');
  String num = stdin.readLineSync()!;

  int num1 = int.tryParse(num) ?? 0;
  for (var i = 1; i <= 10; i++) {
    print('$num1 X $i = ${num1 * i}');
  }
}
