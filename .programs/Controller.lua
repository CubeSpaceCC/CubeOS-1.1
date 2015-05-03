local function check()
  if turtle.getFuelLevel() < 5 then
        turtle.select(16)
        turtle.refuel(1)
        turtle.select(1)
  end
end
local function RoxSlave()
  local run = 1
  while run == 1 do
        local scrap, message = rednet.receive()
        if message == "MoveForward" then
          check()
          turtle.forward()
        elseif message == "MoveBack" then
          check()
          turtle.back()
        elseif message == "MoveLeft" then
          turtle.turnLeft()
        elseif message == "MoveRight" then
          turtle.turnRight()
        elseif message == "MoveUp" then
          check()
          turtle.up()
        elseif message == "MoveDown" then
          check()
          turtle.down()
        elseif message == "DigForward" then
          turtle.dig()
        elseif message == "DigUp" then
          turtle.digUp()
        elseif message == "DigDown" then
          turtle.digDown()
        elseif message == "EndTurtle" then
          run = 0
          rednet.close("right")
          textutils.slowPrint("Console ended program.")
        elseif message == "EndBoth" then
          run = 0
          rednet.close("right")
          textutils.slowPrint("Console ended program.")
        end
  end
end
rednet.open("right")
term.clear()
textutils.slowPrint("Rox Remote Control Turtle \(RoxRCT\)")
print("---------------------------------------")
textutils.slowPrint("Receiver ready. Awaiting command from")
textutils.slowPrint("the console.")
textutils.slowPrint("Fuel is used from slot 16.")
print("---------------------------------------")
RoxSlave()
