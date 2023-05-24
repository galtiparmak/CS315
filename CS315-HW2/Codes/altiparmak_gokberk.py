# Conditional exit
for x in range(3):
    print("*")
print("\n")

# Unconditional exit(break)
x = 3
while True:
    print("***\n")
    if (x == 3):
        break

# Unconditional exit(continue)
while True:
    x = x + 1
    if (x < 10):
        continue
    print("******\n")
    break

# Enclosed loops exit
for i in range(3):
    for j in range(2):
        if (i == 1):
            break
        print("j =",j)
    print ("i =" ,i)