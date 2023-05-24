void main() {
  Map<String, String> capitals = {
    "Turkey" : "Ankara",
    "Italy" : "Rome"
};
  print(capitals);
  print(capitals["Turkey"]); // get element
  capitals["Germany"] = "Munich"; // add element
  print(capitals);
  capitals.remove("Italy"); // remove element
  print(capitals);
  capitals.update("Germany", (value) => "Berlin"); // update element
  print(capitals); 
  print(capitals.containsKey("Turkey")); // contains key
  print(capitals.containsValue("Ankara")); // contains value
  foo(capitals);
}
void foo(Map<String, String> aMap) {
  aMap.forEach((key, value) => print("key: $key value: $value")) ;
}