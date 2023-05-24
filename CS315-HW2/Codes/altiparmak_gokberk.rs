fn main() {
    // Conditional exit
    for i in 1..3 {
      println!("{:?}", i);
    }

    // Unconditional exit(break)
    let mut x = 4;
    loop {
        if x == 6 {
            break;
        }
        x += 1;
        println!("***");
    }

    // Unconditional exit(continue)
    loop {
        x += 1;
        if x < 10 {
            continue;
        }
        println!("******");
        break;
    }

    // Enclosed loops exit
    for i in 0..3 {
        for j in 0..2 {
          if i == 1 {
            break;
          }
          println!("j = {}", j);
        }
        println!("i = {}", i);
      }
}