import 'dart:io';

void main() {
  while (true) {
    stdout.write("Enter 2 numbers");
    int a = int.parse(stdin.readLineSync()!);

    int b = int.parse(stdin.readLineSync()!);
    stdout.write(a % b);
  }
}
