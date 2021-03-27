void main() {
  print(check(6, "Flutter")); // prints the result of check
}

String check(int c, String y) {
  // getting parameter into c
  String r = " "; // пустышка
  switch (c) {
    case 1:
      r = "is Monday";
      break;
    case 2:
      r = "is Tuesday";
      break;
    case 3:
      r = "is Wednesday";
      break;
    case 4:
      r = "is Thursday";
      break;
    case 5:
      r = "is Friday";
      break;
    case 6:
      r = "is Saturday";
      break;
    case 7:
      r = "is Sunday";
      break;
    default:
      r = "not found";
    //r = c.toString() + " not found";  if we change the int which is not in case
  }
  print(y); // print string y
  return r; //returns to main function
}
