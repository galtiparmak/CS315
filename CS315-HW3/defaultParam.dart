double areaofCircle(int r, {double pi = 3.14}) {
  return r*r*pi;
}

void main() {
  print(areaofCircle(5)); // With default parameter
  print(areaofCircle(5, pi:3)); // Override the default parameter
}