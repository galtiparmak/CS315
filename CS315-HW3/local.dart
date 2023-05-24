void main() {
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
  
}