import std.stdio : writeln;

void main() {
  int a = 5;
  if (a == 5) {
    writeln("Condition is met");
  } else if (a > 10) {
    writeln("Another condition is met");
  } else {
    writeln("Nothing is met");
  }
  
  if (1 == 1) 
    writeln("You can trust math in D");

  int c = 5;
  switch (c) {
  case 0: .. case 9:
    writeln(c, " is within 0-9");
    break;
  case 10:
    writeln("A ten!");
    break;
  default:
    writeln("Nothing");
    break;
  }
}
