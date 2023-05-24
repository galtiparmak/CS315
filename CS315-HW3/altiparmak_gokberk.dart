double areaOfRectangle(double x, double y) {
  double multiply(double x, double y) {
    return x*y;
  }
  return multiply(x,y);
}

int ppm1(x) {
  return ++x;
}

void ppm2(int x, Function f) {
  print(f(x));
}

double areaofCircle(int r, {double pi = 3.14}) {
  return r*r*pi;
}

void main() {
  print('1-Nested Subprogram');
  print('Hello, World!');
  double area = areaOfRectangle(5, 4);
  print("Area = $area"); 
  print('----------');

  print('2-Scope of local variables');
  var x = 5; // Global
  
  // Function
  void increment() {
    var x = 2;
    print("x in function = $x");
  }
  
  increment();
  print("x in main = $x");
  
  void nested1() {
    var x = 111;
    void nested2() {
      print("x in nested2 = $x");
      x++;
    }
    nested2();
    print("x in nested1 = $x");
  }
  
  nested1();
  print("x in main = $x");
  print('----------');

  print('3-Parameter passing methods');
  print(ppm1(4)); // 5
  print(ppm1(ppm1(5))); // 7

  int increment1(int i) => i + 1;
  ppm2(5, increment1); // 6
  print('----------');
  
  print('4-Default parameters');
  print(areaofCircle(5)); // With default parameter
  print(areaofCircle(5, pi:3)); // Override the default parameter
  print('----------');
  
  print('5-Closure');
  var mul = (int x, int y) => x*y; // Arrow Syntax
  var result = mul(5, 5);
  print("Result = $result");
  
  mul = (int x, int y) {
    return x*y;
  };
  result = mul(5, 6);
  print("Result = $result");
  
  
  int Function(int x, int y) mod;
  mod = (int x, int y) => x%y; // Function
  
  result = mod(70, 11);
  print("Result = $result");
  
  double funct(int op1, int op2, double Function(int op1, int op2)div) { // With Parameter
    var x = div(op1, op2);
    return x;
  }
  
  var y = (int op1, int op2) {
    return op1/op2;
  };
  
  var res = funct(100, 5, y);
  print("Result = $res");
}