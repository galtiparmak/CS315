var capitals = {
    "Turkey" : "Istanbul",
    "Spain" : "Madrid"
};
foo(capitals);
console.log("-----------");
console.log(capitals["Turkey"]); //get element
console.log("-----------");
capitals["Germany"] = "Berlin"; // add element
foo(capitals);
console.log("-----------");
delete capitals["Spain"]; // remove element
foo(capitals);
console.log("-----------");
capitals["Turkey"] = "Ankara";
foo(capitals);
console.log("-----------");
console.log("Turkey" in capitals); // contain key
console.log("-----------");
console.log(containsValue(capitals, "Ankara")); // contain value
console.log("-----------");
foo(capitals);

function containsValue(a, b){
    for (let key in a) {
	let value = a[key];
	if (value == b)
	    return true;
	return false;
    }
}

function foo(a) {
    for (let key in a){
	let value = a[key];
	console.log("Key: " + key, " Value: " + value);
    }
}
