-- Conditional exit
for i= 3,1,-1
do
    print("*")
end

-- Unconditional exit(break)
x = 4
repeat
print("*")
break;
until( x == 3 )

-- Unconditional exit(continue)
repeat
    x = x + 1;
    if (x < 10) then
        goto continue
    end
    print("*")
    break
    ::continue::
until( x == 3 )

-- Enclosed loops exit
for i = 0,2,1
do
    for j = 0,1,1
    do 
        if (i == 1) then
            break;
        end
        print("j = " , j) 
    end
        print("i = " , i) 
end

-- Labeled exit
for i = 5,1,-1
do
    for j = 3,1,-1
    do 
        goto exit
    end
end
::exit::
print("***")
