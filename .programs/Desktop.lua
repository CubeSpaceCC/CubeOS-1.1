term.clear()
term.setCursorPos(1,1)
print("Choose a program:")
term.setCursorPos(1,3)
term.blit("> Games","dbbbbbb","0000000")
term.setCursorPos(1,5)
term.blit("> Basic Editor","dbbbbbbbbbbbbb","00000000000000")
term.setCursorPos(1,7)
term.blit("> Turtle Control","dbbbbbbbbbbbbbbb","0000000000000000")

local evt, x, y = os.pullEvent('mouse_click')

if x == 1 and y == 3 then
shell.run("/.programs/games")
elseif x == 1 and y == 5 then
term.clear()
term.setCursorPos(1,1)
write("File Path: /")
path = read()
shell.run("edit /"..path)
elseif x == 1 and y == 7 then
shell.run("/.programs/Controller")
else
shell.run("/.programs/Desktop")
end
