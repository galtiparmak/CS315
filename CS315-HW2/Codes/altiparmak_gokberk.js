// Conditional exit
for(let i = 0; i < 5; i++) {
    console.log("*");
}

// Unconditional exit(break)
var x = 4;
for (;;) {
    if (x == 5)
        break;
    console.log("*");
    x++;
}

// Unconditional exit(continue)
for (;;) {
    x++;
    if (x < 10)
        continue;
    console.log("*");
    break;
}

// Enclosed loops exit
for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 2; j++) {
        if (i == 1) {
            break;
        }
        console.log("j = " + j);
    }
    console.log("i = " + i);
}