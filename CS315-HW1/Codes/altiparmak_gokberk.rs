use std::collections::HashMap;

fn foo(map: &mut HashMap<&str,&str>) ->(){
  for (key, value) in map.iter() {
    println!("{} - {}", key, value);
  }
  println!("------");
}

fn main() {
  let mut capitals = HashMap::new();
  capitals.insert("Turkey", "Istanbul");
  capitals.insert("Germany", "Berlin");
  foo(&mut capitals);
  println!("{:?}", capitals["Turkey"]);
  println!("------");
  capitals.insert("Italy", "Rome");
  foo(&mut capitals);
  capitals.remove("Germany");
  foo(&mut capitals);
  *capitals.get_mut("Turkey").unwrap() = "Ankara";
  foo(&mut capitals);
  println!("{:?}", capitals.contains_key("Turkey"));
  println!("{:?}", capitals.values().any(|&x| x == "Ankara"));
  println!("------");
  foo(&mut capitals);
}