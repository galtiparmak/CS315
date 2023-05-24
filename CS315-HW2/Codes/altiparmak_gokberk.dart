void main() {
    // Conditional exit
    for (int i = 0; i < 5; i++) {
        print("*");
    }

    // Unconditional exit(break)
    var x = 4;
    for (;;) {
        if (x == 5)
            break;
        print("*")
        x++;
    }

    // Unconditional exit(continue)
    for(;;) {
        x++;
        if (x < 10)
            continue;
        print("*");
        break;
    }

    // Enclosed loops exit
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 2; j++) {
            if (i == 1) {
                break;
            }
            print('j = $j');
        }
        print('i = $i');
    } 

    // Labeled exit
    outFor:
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 3; j++) {
            print("*");
            break outFor;
        }
    }
}