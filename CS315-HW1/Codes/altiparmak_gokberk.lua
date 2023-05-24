local capitals = {}
capitals["Turkey"] = "Istanbul"
capitals["Germany"] = "Berlin"
for k, v in pairs(capitals) do print(k, v) end
print("\n")
print(capitals["Turkey"])
capitals["Italy"] = "Rome"
print("\n")
for k,v in pairs(capitals) do print(k, v) end
print("\n")
capitals.Germany = nil
for k,v in pairs(capitals) do print(k, v) end
capitals["Turkey"] = "Ankara"
print("\n")
for k,v in pairs(capitals) do print(k, v) end
print("\n")
if capitals["Turkey"] ~= nil then print("true")
else print("false") end