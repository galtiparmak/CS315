int ppm1(x) {
  return ++x;
}

void ppm2(int x, Function f) {
  print(f(x));
}

void main() {
  print(ppm1(4)); // 5
  print(ppm1(ppm1(5))); // 7

  int increment(int i) => i + 1;
  ppm2(5, increment); // 6
}
