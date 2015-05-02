term.clear()
term.setCursorPos(1,1)
print("Choose a program:")
term.setCursorPos(1,3)
term.setTextColor(colors.green)
write(">")
term.setTextColor(colors.blue)
write(" Games")
term.setCursorPos(1,5)
term.setTextColor(colors.green)
write(">")
term.setTextColor(colors.blue)
write(" Basic Editor")

local evt, x, y = os.pullEvent('mouse_click')

if x == 1 and y == 3 then
shell.run("/.programs/games")
elseif x == 1 and y == 5 then
term.clear()
term.setCursorPos(1,1)
write("File Path: /")
path = read()
shell.run("edit /"..path)
else
shell.run("/.programs/Desktop")
end
