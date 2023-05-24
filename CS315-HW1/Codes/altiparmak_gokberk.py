def foo(arr):
    for key in arr.keys():
        print("Key: " + key + " Value: " + arr[key])
    print("--------------")

def containsValue(arr, value):
    for key in arr.keys():
        if(arr[key] == value):
            return "true"
    return "false"


capitals = {"Turkey" : "Istanbul", "Germany" : "Berlin"}
foo(capitals)
capitals["Italy"] = "Rome"

foo(capitals)
print(capitals["Turkey"])

del capitals["Germany"]

foo(capitals)

capitals["Turkey"] = "Ankara"

if "Turkey" in capitals.keys():
    print("true")
else:
    print("false")

print(containsValue(capitals, "Ankara"))

foo(capitals)

