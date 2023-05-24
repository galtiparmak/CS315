void main() {
  
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